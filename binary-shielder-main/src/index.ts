import * as fs from "fs";
import * as path from "path";
import { execSync } from "child_process";
import { AndroidManifestParser } from "./lib/AndroidManifest.js";

/**
 * Programme d'injection automatique de sécurité dans les APK Android
 *
 * Usage: npm start <chemin_vers_fichier.apk>
 */

/**
 * Point d'entrée principal
 */
async function main() {
	console.log(
		"╔════════════════════════════════════════════════════════════╗"
	);
	console.log("║    🔒 ANDROID BINARY SECURITY INJECTOR - APK Shielder   ║");
	console.log("║       Injection automatique dans les fichiers APK        ║");
	console.log(
		"╚════════════════════════════════════════════════════════════╝"
	);
	console.log("");

	// ========== VÉRIFICATION DES ARGUMENTS ==========

	if (process.argv.length < 3) {
		console.error("❌ ERREUR : Fichier APK manquant\n");
		console.log("📖 Usage:");
		console.log("   npm start <chemin_fichier.apk>");
		console.log("");
		console.log("📝 Exemple:");
		console.log("   npm start C:\\Users\\majdi\\Desktop\\app-debug.apk");
		console.log("");
		process.exit(1);
	}

	const apkPath = process.argv[2];

	console.log("📂 Fichier APK cible:");
	console.log(`   ${apkPath}`);
	console.log("");

	// Vérification de l'existence du fichier
	if (!fs.existsSync(apkPath as string)) {
		console.error(`❌ ERREUR : Le fichier n'existe pas`);
		console.error(`   ${apkPath}`);
		console.log("");
		process.exit(1);
	}

	// Vérification de l'extension
	if (!(apkPath as string).toLowerCase().endsWith(".apk")) {
		console.error(`❌ ERREUR : Le fichier doit être un APK (.apk)`);
		console.error(
			`   Fichier fourni : ${path.basename(apkPath as string)}`
		);
		console.log("");
		process.exit(1);
	}

	console.log("✅ Fichier APK valide détecté");
	console.log("");

	// ========== DÉMARRAGE DU PROCESSUS D'INJECTION ==========

	try {
		console.log("═".repeat(60));
		console.log("  PHASE 1 : DÉCOMPILATION DE L'APK");
		console.log("═".repeat(60));
		console.log("");

		const decompDir = await decompileApk(apkPath as string);

		console.log("");
		console.log("═".repeat(60));
		console.log("  PHASE 2 : INJECTION DE SECURITYSHIELD.SMALI");
		console.log("═".repeat(60));
		console.log("");

		await injectSecurityShieldSmali(decompDir);

		console.log("");
		console.log("═".repeat(60));
		console.log("  PHASE 3 : ANALYSE DU MANIFEST");
		console.log("═".repeat(60));
		console.log("");

		const mainActivity = await findMainActivity(decompDir);

		console.log("");
		console.log("═".repeat(60));
		console.log("  PHASE 4 : LOCALISATION ET PARSING SMALI");
		console.log("═".repeat(60));
		console.log("");

		const activitySmaliPath = await findActivitySmaliFile(
			decompDir,
			mainActivity
		);

		console.log("");
		console.log("═".repeat(60));
		console.log("  PHASE 5 : MODIFICATION DE L'AST SMALI");
		console.log("═".repeat(60));
		console.log("");

		await injectProtectionInSmali(activitySmaliPath);

		console.log("");
		console.log("═".repeat(60));
		console.log("  PHASE 6 : RECOMPILATION DE L'APK");
		console.log("═".repeat(60));
		console.log("");

		const outputApk = await recompileApk(decompDir, apkPath as string);

		console.log("");
		console.log("═".repeat(60));
		console.log("  PHASE 7 : SIGNATURE DE L'APK");
		console.log("═".repeat(60));
		console.log("");

		await signApk(outputApk);

		console.log("");
		console.log(
			"╔════════════════════════════════════════════════════════════╗"
		);
		console.log(
			"║                ✅ INJECTION RÉUSSIE !                      ║"
		);
		console.log(
			"╚════════════════════════════════════════════════════════════╝"
		);
		console.log("");
		console.log("📱 Prochaines étapes :");
		console.log("   1. Installez l'APK signé sur un émulateur");
		console.log("   2. Lancez l'application");
		console.log(
			"   3. Elle devrait se fermer immédiatement (détection émulateur)"
		);
		console.log("   4. Vérifiez les logs : adb logcat -s SecurityShield");
		console.log("");
	} catch (error) {
		console.log("");
		console.log(
			"╔════════════════════════════════════════════════════════════╗"
		);
		console.log(
			"║                  ❌ ERREUR CRITIQUE                        ║"
		);
		console.log(
			"╚════════════════════════════════════════════════════════════╝"
		);
		console.log("");

		if (error instanceof Error) {
			console.error("Message d'erreur :");
			console.error(`   ${error.message}`);

			if (error.stack) {
				console.log("");
				console.log("Stack trace (pour debugging) :");
				console.error(error.stack);
			}
		} else {
			console.error("Erreur inconnue :", error);
		}

		console.log("");
		process.exit(1);
	}
}

/**
 * PHASE 1 : Décompile l'APK avec Apktool
 */
async function decompileApk(apkPath: string): Promise<string> {
	console.log("🔍 Décompilation de l'APK avec Apktool...");

	const apkName = path.basename(apkPath, ".apk");
	const outputDir = path.join(path.dirname(apkPath), `${apkName}_decompiled`);

	// Supprimer le dossier s'il existe déjà
	if (fs.existsSync(outputDir)) {
		console.log("   ⚠️  Dossier existant détecté, suppression...");
		fs.rmSync(outputDir, { recursive: true, force: true });
	}

	console.log(`   📁 Dossier de sortie : ${outputDir}`);

	try {
		const command = `apktool d -o "${outputDir}" "${apkPath}"`;
		console.log(`   🔧 Commande : ${command}`);

		execSync(command, { stdio: "inherit" });

		console.log("   ✓ Décompilation réussie");
		return outputDir;
	} catch (error) {
		throw new Error(
			`Échec de la décompilation de l'APK.\n` +
				`   Vérifiez qu'Apktool est installé et dans le PATH.\n` +
				`   Commande : apktool d -o "${outputDir}" "${apkPath}"`
		);
	}
}

/**
 * PHASE 2 : Copie SecurityShield.smali dans l'APK décompilé
 */
async function injectSecurityShieldSmali(decompDir: string): Promise<void> {
	console.log("🔍 Recherche de SecurityShield.smali...");

	// Le fichier source doit être dans resources/
	const sourceFile = path.join(
		process.cwd(),
		"resources",
		"SecurityShield.smali"
	);

	if (!fs.existsSync(sourceFile)) {
		throw new Error(
			`Le fichier SecurityShield.smali est introuvable.\n` +
				`   Attendu à : ${sourceFile}\n` +
				`   Créez ce fichier en compilant votre projet de la Partie 1\n` +
				`   et en récupérant le .smali avec Apktool.`
		);
	}

	console.log(`   ✓ Fichier source trouvé`);

	// Créer l'arborescence com/security/shield dans smali/
	const destDir = path.join(decompDir, "smali_classes3", "com", "security", "shield");
	const destFile = path.join(destDir, "SecurityShield.smali");

	console.log("📁 Création de l'arborescence de packages...");
	console.log(`   ${destDir}`);

	fs.mkdirSync(destDir, { recursive: true });
	console.log("   ✓ Dossiers créés");

	console.log("📄 Copie du fichier Smali...");
	fs.copyFileSync(sourceFile, destFile);

	console.log(`   ✓ Fichier copié avec succès`);
	console.log(`   📍 Emplacement : ${destFile}`);
}

/**
 * PHASE 3 : Trouve l'activité principale dans AndroidManifest.xml
 */
async function findMainActivity(decompDir: string): Promise<string> {
	const manifestPath = path.join(decompDir, "AndroidManifest.xml");

	console.log("🔍 Analyse du fichier AndroidManifest.xml...");
	console.log(`   ${manifestPath}`);

	if (!fs.existsSync(manifestPath)) {
		throw new Error(`AndroidManifest.xml introuvable à : ${manifestPath}`);
	}

	const parser = new AndroidManifestParser();
	const manifest = parser.parse(manifestPath);

	console.log("   ✓ Fichier XML parsé avec succès");

	console.log("🔎 Recherche de l'activité principale (LAUNCHER)...");

	const activities = manifest.manifest.application.activity ?? [];

	if (activities.length === 0) {
		throw new Error("Aucune activité trouvée dans le manifest");
	}

	console.log(`   ℹ️  ${activities.length} activité(s) trouvée(s)`);

	for (const activity of activities) {
		const activityName = activity["@android:name"];

		if (!activity["intent-filter"]) continue;

		const intentFilters = activity["intent-filter"];

		for (const filter of intentFilters) {
			const action = filter.action;

			if (action["@android:name"] === "android.intent.action.MAIN") {
				console.log(
					`   ✓ Activité principale trouvée : ${activityName}`
				);

				// Convertir en notation Smali : com.example.App -> Lcom/example/App;
				const smaliName = convertToSmaliNotation(activityName);
				console.log(`   📌 Notation Smali : ${smaliName}`);

				return smaliName;
			}
		}
	}

	throw new Error(
		"Aucune activité principale trouvée dans AndroidManifest.xml"
	);
}

/**
 * Convertit un nom de classe Java en notation Smali
 * Exemple : com.example.MainActivity -> Lcom/example/MainActivity;
 */
function convertToSmaliNotation(javaName: string): string {
	// Si commence déjà par L, c'est déjà du Smali
	if (javaName.startsWith("L")) {
		return javaName;
	}

	// Si commence par un point, c'est relatif au package
	if (javaName.startsWith(".")) {
		// On ne peut pas le convertir sans connaître le package de base
		// On retourne tel quel et on gérera ça dans findActivitySmaliFile
		return javaName;
	}

	// Conversion standard : com.example.App -> Lcom/example/App;
	const smaliPath = javaName.replace(/\./g, "/");
	return `L${smaliPath};`;
}

/**
 * PHASE 4 : Trouve le fichier .smali correspondant à l'activité
 */
async function findActivitySmaliFile(
	decompDir: string,
	activitySmaliName: string
): Promise<string> {
	console.log(`🔍 Recherche du fichier Smali pour ${activitySmaliName}...`);

	const smaliDir = path.join(decompDir, "smali_classes4");

	if (!fs.existsSync(smaliDir)) {
		throw new Error(`Dossier smali introuvable : ${smaliDir}`);
	}

	// Convertir Lcom/example/MainActivity; -> com/example/MainActivity.smali
	let searchPath =
		activitySmaliName.substring(1, activitySmaliName.length - 1) + ".smali";

	// Gérer les noms relatifs (commençant par un point)
	if (activitySmaliName.startsWith(".")) {
		// Chercher récursivement
		console.log("   ℹ️  Nom relatif détecté, recherche récursive...");
		const className = activitySmaliName.substring(1); // Retirer le point
		return await searchSmaliFileRecursive(smaliDir, className + ".smali");
	}

	const fullPath = path.join(smaliDir, searchPath);

	console.log(`   🔎 Chemin recherché : ${fullPath}`);

	if (!fs.existsSync(fullPath)) {
		// Essayer une recherche récursive
		console.log(
			"   ⚠️  Fichier non trouvé au chemin direct, recherche récursive..."
		);
		const className = path.basename(searchPath);
		return await searchSmaliFileRecursive(smaliDir, className);
	}

	console.log(`   ✓ Fichier trouvé`);
	console.log(`   📍 ${fullPath}`);

	return fullPath;
}

/**
 * Recherche récursive d'un fichier .smali
 */
function searchSmaliFileRecursive(dir: string, filename: string): string {
	const files = fs.readdirSync(dir);

	for (const file of files) {
		const filePath = path.join(dir, file);
		const stat = fs.statSync(filePath);

		if (stat.isDirectory()) {
			try {
				return searchSmaliFileRecursive(filePath, filename);
			} catch {
				// Continue searching
			}
		} else if (file === filename) {
			return filePath;
		}
	}

	throw new Error(`Fichier ${filename} introuvable dans ${dir}`);
}

/**
 * PHASE 5 : Injecte l'appel à SecurityShield.protect() dans le Smali
 */
async function injectProtectionInSmali(smaliFilePath: string): Promise<void> {
	console.log("📖 Lecture du fichier Smali...");

	let content = fs.readFileSync(smaliFilePath, "utf-8");

	console.log("   ✓ Fichier lu");

	// Vérifier si l'injection a déjà été faite
	if (content.includes("Lcom/security/shield/SecurityShield;->protect")) {
		console.log("");
		console.log("⚠️  ATTENTION : Le code de protection est déjà présent");
		console.log("   L'injection est ignorée pour éviter les doublons");
		console.log("");
		return;
	}

	console.log("🔧 Recherche de la méthode onCreate...");

	// Trouver la méthode onCreate
	const onCreateRegex = /\.method\s+.*\s+onCreate\(Landroid\/os\/Bundle;\)V/;


	if (!onCreateRegex.test(content)) {
		throw new Error("Méthode onCreate introuvable dans le fichier Smali");
	}

	console.log("   ✓ Méthode onCreate trouvée");

	console.log("🔧 Recherche de l'appel invoke-super...");

	// Trouver invoke-super dans onCreate
	// Pattern : invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V
	const invokeSuperRegex =
		/invoke-super\s+\{[^}]+\},\s+[^;]+;->onCreate\(Landroid\/os\/Bundle;\)V/;

	if (!invokeSuperRegex.test(content)) {
		throw new Error("Appel invoke-super introuvable dans onCreate");
	}

	console.log("   ✓ Appel invoke-super trouvé");

	console.log("🔧 Injection du code de protection...");

	// Code Smali à injecter
	const injectionCode = `
    # ===== INJECTION AUTOMATIQUE - SÉCURITÉ =====
    invoke-static {p0}, Lcom/security/shield/SecurityShield;->protect(Landroid/content/Context;)V
    # ===========================================`;

	// Injecter juste après invoke-super
	content = content.replace(invokeSuperRegex, (match) => {
		return match + injectionCode;
	});

	console.log("   ✓ Code injecté");

	console.log("💾 Sauvegarde des modifications...");

	fs.writeFileSync(smaliFilePath, content, "utf-8");

	console.log("   ✓ Fichier modifié et sauvegardé avec succès");
}

/**
 * PHASE 6 : Recompile l'APK avec Apktool
 */
async function recompileApk(
	decompDir: string,
	originalApkPath: string
): Promise<string> {
	console.log("🔧 Recompilation de l'APK avec Apktool...");

	const apkName = path.basename(originalApkPath, ".apk");
	const outputApk = path.join(
		path.dirname(originalApkPath),
		`${apkName}-modified.apk`
	);

	// Supprimer l'APK s'il existe déjà
	if (fs.existsSync(outputApk)) {
		console.log("   ⚠️  APK existant détecté, suppression...");
		fs.unlinkSync(outputApk);
	}

	console.log(`   📁 APK de sortie : ${outputApk}`);

	try {
		const command = `apktool b -o "${outputApk}" "${decompDir}"`;
		console.log(`   🔧 Commande : ${command}`);

		execSync(command, { stdio: "inherit" });

		console.log("   ✓ Recompilation réussie");
		return outputApk;
	} catch (error) {
		throw new Error(
			`Échec de la recompilation de l'APK.\n` +
				`   Vérifiez qu'il n'y a pas d'erreurs dans le Smali modifié.\n` +
				`   Commande : apktool b -o "${outputApk}" "${decompDir}"`
		);
	}
}

/**
 * PHASE 7 : Signe l'APK avec uber-apk-signer
 */
async function signApk(apkPath: string): Promise<void> {
	console.log("🔏 Signature de l'APK...");

	const signerJar =
		"C:\\Program Files\\ApkTools\\uber-apk-signer-1.3.0.jar";

	if (!fs.existsSync(signerJar)) {
		throw new Error(
			`uber-apk-signer introuvable.\n` +
				`   Attendu à : ${signerJar}\n` +
				`   Téléchargez-le depuis : https://github.com/patrickfav/uber-apk-signer/releases`
		);
	}

	try {
		const command = `java -jar "${signerJar}" --apks "${apkPath}"`;
		console.log(`   🔧 Commande : ${command}`);

		execSync(command, { stdio: "inherit" });

		console.log("   ✓ Signature réussie");

		const signedApk = apkPath.replace(".apk", "-aligned-debugSigned.apk");
		console.log(`   📍 APK signé : ${signedApk}`);
	} catch (error) {
		throw new Error(
			`Échec de la signature de l'APK.\n` +
				`   Vérifiez que Java est installé et dans le PATH.\n` +
				`   Commande : java -jar "${signerJar}" --apks "${apkPath}"`
		);
	}
}

// ========== LANCEMENT DU PROGRAMME ==========

main();
