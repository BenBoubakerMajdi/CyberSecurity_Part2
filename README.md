# 🔒 Android Binary Security Injector - APK Shielder

> Outil d'injection automatique de protections de sécurité dans les fichiers APK Android (binaires)

Injecte automatiquement des détecteurs de menaces (root, émulateur, débogueur, mode développeur) dans n'importe quel APK Android compilé, sans accès au code source.

---

## 📋 Table des matières

- [Présentation](#-présentation)
- [Objectifs](#-objectifs)
- [Fonctionnalités](#-fonctionnalités)
- [Architecture](#-architecture)
- [Prérequis](#-prérequis)
- [Installation](#-installation)
- [Utilisation](#-utilisation)
- [Fonctionnement détaillé](#-fonctionnement-détaillé)
- [Exemples](#-exemples)
- [Développement](#-développement)
- [Limites](#-limites)

---

## 🎯 Présentation

**Android Binary Security Injector** est un outil TypeScript qui modifie automatiquement des fichiers APK Android compilés pour y injecter des protections de sécurité, **sans avoir accès au code source**.

### Différence avec la Cybersecurity Partie 1

| Aspect | Partie 1 (Source Injector) | Partie 2 (Binary Injector) |
|--------|---------------------------|----------------------------|
| **Cible** | Code source (.kt, .java) | Binaire compilé (.apk) |
| **Langage modifié** | Kotlin/Java | Smali (assembleur) |
| **Outil principal** | Android Studio | Apktool + ANTLR |
| **Niveau** | Haut niveau | Bas niveau (bytecode) |
| **Cas d'usage** | Apps open-source | Apps fermées, sans code source |
| **Complexité** | Moyenne | Élevée |
| **Reverse engineering** | Non | Oui |

### Cas d'usage réels

- 🔍 **Audit de sécurité** : Analyser des APK tiers
- 🛡️ **Protection post-compilation** : Ajouter des protections à des apps existantes
- 🧪 **Recherche** : Expérimenter avec des apps sans code source
- 📚 **Pédagogie** : Apprendre le reverse engineering Android

---

## 🎯 Objectifs :
- Comprendre le format APK et le bytecode DEX
- Maîtriser le langage assembleur Smali
- Utiliser ANTLR pour parser et manipuler du code
- Développer un outil CLI complet en TypeScript
- Pratiquer le reverse engineering Android

---

## ✨ Fonctionnalités

### Protection automatique

- **Injection automatisée** : Traitement complet sans intervention manuelle
- **Parsing AST** : Utilise ANTLR pour analyser le code Smali
- **Validation syntaxique** : Garantit que le Smali modifié est valide
- **Protection anti-doublon** : Évite les injections multiples
- **Gestion d'erreurs robuste** : Messages clairs et debugging facilité

### Détections implémentées

Le code injecté détecte automatiquement :

| Vecteur | Description | Risque |
|---------|-------------|--------|
| 🐛 **Débogueur** | Android Debug Bridge attaché | Analyse en temps réel |
| 🔧 **Mode développeur** | Options développeur activées | Débogage USB, logs |
| 🔓 **Root** | Privilèges administrateur | Contournement du sandbox |
| 🖥️ **Émulateur** | Exécution sur émulateur | Environnement contrôlé |

### Remédiation

**Action par défaut** : Fermeture immédiate de l'application si une menace est détectée.

---

## 🏗️ Architecture

### Vue d'ensemble

```
┌─────────────────────────────────────────────────────────┐
│         Android Binary Security Injector                │
│                                                          │
│  ┌──────────┐    ┌──────────┐    ┌──────────┐         │
│  │ Phase 1  │───▶│ Phase 2  │───▶│ Phase 3  │         │
│  │Décompile │    │ Inject   │    │ Analyse  │         │
│  │   APK    │    │ Smali    │    │ Manifest │         │
│  └──────────┘    └──────────┘    └──────────┘         │
│       │               │                │                │
│       ▼               ▼                ▼                │
│  ┌──────────┐    ┌──────────┐    ┌──────────┐         │
│  │ Phase 4  │◀───│ Phase 5  │◀───│ Phase 6  │         │
│  │ Localise │    │ Modifie  │    │Recompile │         │
│  │  Smali   │    │   AST    │    │   APK    │         │
│  └──────────┘    └──────────┘    └──────────┘         │
│       │               │                │                │
│       └───────────────┴────────────────┘                │
│                       │                                 │
│                  ┌──────────┐                          │
│                  │ Phase 7  │                          │
│                  │  Signe   │                          │
│                  │   APK    │                          │
│                  └──────────┘                          │
│                                                          │
└─────────────────────────────────────────────────────────┘
```

### Pipeline d'injection

1. **Décompilation** : APK → Smali + Ressources (Apktool)
2. **Injection fichier** : Copie de `SecurityShield.smali`
3. **Analyse Manifest** : Identification de l'activité principale
4. **Localisation** : Recherche du fichier `.smali` correspondant
5. **Modification AST** : Parsing et injection avec ANTLR
6. **Recompilation** : Smali → APK modifié (Apktool)
7. **Signature** : Signature de l'APK (uber-apk-signer)

### Structure du projet

```
binary-injector/
├── grammars/
│   ├── SmaliLexer.g4          # Grammaire lexicale Smali (ANTLR)
│   └── SmaliParser.g4         # Grammaire syntaxique Smali (ANTLR)
├── resources/
│   └── SecurityShield.smali   # Code de protection en Smali
├── src/
│   ├── lib/
│   │   ├── AndroidManifest.ts # Parser de manifeste Android
│   │   ├── SmaliLexer.ts      # Lexer généré (ANTLR)
│   │   ├── SmaliParser.ts     # Parser généré (ANTLR)
│   │   ├── SmaliWriter.ts     # Écriture d'AST Smali
│   │   └── smaliPrinter.ts    # Affichage d'AST (debug)
│   └── index.ts               # Programme principal
├── dist/                       # Code compilé (généré)
├── package.json
├── tsconfig.json
└── README.md
```

---

## 📦 Prérequis

### Outils requis

| Outil | Version | Usage |
|-------|---------|-------|
| **Node.js** | 20.x+ | Environnement d'exécution |
| **npm** | 10.x+ | Gestionnaire de paquets |
| **Java JDK** | 17+ | Requis par Apktool |
| **Apktool** | 2.9.3+ | Décompilation/recompilation APK |
| **uber-apk-signer** | 1.3.0+ | Signature d'APK |
| **ADB** (optionnel) | - | Test sur émulateur/appareil |

### Installation des outils

#### Windows

**1. Java JDK**
```bash
# Télécharger depuis https://www.oracle.com/java/technologies/downloads/
# Vérifier l'installation
java -version
```

**2. Apktool**
```bash
# Télécharger depuis https://apktool.org/
# Placer apktool.jar et apktool.bat dans un dossier
# Ajouter le dossier au PATH système
apktool
```

**3. uber-apk-signer**
```bash
# Télécharger depuis https://github.com/patrickfav/uber-apk-signer/releases
# Placer le .jar dans le même dossier qu'Apktool
```

#### Linux/macOS

```bash
# Installer Java
sudo apt install openjdk-17-jdk  # Ubuntu/Debian
brew install openjdk@17          # macOS

# Installer Apktool
sudo apt install apktool         # Ubuntu/Debian
brew install apktool             # macOS

# uber-apk-signer : télécharger le .jar manuellement
```

---

## 🚀 Installation

### 1. Cloner le dépôt

```bash
git clone https://github.com/BenBoubakerMajdi/CyberSecurity_Part2.git
cd CyberSecurity_Part2
cd binary-shielder-main
```

### 2. Installer les dépendances

```bash
npm install
```

### 3. Générer le parser Smali

```bash
npm run generate-parser
```

**Sortie attendue :**
```
> antlr-ng -Dlanguage=TypeScript -l -v -o src/lib grammars/SmaliLexer.g4 grammars/SmaliParser.g4

ANTLR Tool version 4.13.2
SmaliLexer.g4 -o src/lib
SmaliParser.g4 -o src/lib
```

### 4. Compiler le projet

```bash
npm run build
```

**Vérification :**
```bash
ls dist/index.js  # Doit exister
```

---

## 💻 Utilisation

### Commande de base

```bash
npm start <chemin_vers_fichier.apk>
```

### Exemple complet

```bash
# 1. Préparer un APK
cp /path/to/your/app-debug.apk ./test.apk

# 2. Lancer l'injection
npm start ./test.apk

# 3. Installer l'APK modifié
adb install test-modified-aligned-debugSigned.apk

# 4. Lancer l'application
# Elle devrait se fermer immédiatement (détection émulateur)

# 5. Vérifier les logs
adb logcat -s SecurityShield
```

### Sortie attendue

```
╔════════════════════════════════════════════════════════════╗
║    🔒 ANDROID BINARY SECURITY INJECTOR - APK Shielder   ║
║       Injection automatique dans les fichiers APK        ║
╚════════════════════════════════════════════════════════════╝

📂 APK cible: ./test.apk

════════════════════════════════════════════════════════════
  PHASE 1 : DÉCOMPILATION
════════════════════════════════════════════════════════════
🔍 Décompilation avec Apktool...
   ✓ Décompilation réussie

════════════════════════════════════════════════════════════
  PHASE 2 : INJECTION SECURITYSHIELD.SMALI
════════════════════════════════════════════════════════════
📄 Copie de SecurityShield.smali...
   ✓ Fichier copié

════════════════════════════════════════════════════════════
  PHASE 3 : ANALYSE MANIFEST
════════════════════════════════════════════════════════════
🔍 Recherche activité principale...
   ✓ Activité: .MainActivity

════════════════════════════════════════════════════════════
  PHASE 4 : LOCALISATION SMALI
════════════════════════════════════════════════════════════
🔍 Recherche fichier Smali...
   ✓ Trouvé: [...]/MainActivity.smali

════════════════════════════════════════════════════════════
  PHASE 5 : MODIFICATION (APPROCHE HYBRIDE)
════════════════════════════════════════════════════════════
📖 Lecture du fichier...
🔧 Parsing avec ANTLR pour validation...
   ✓ Syntaxe Smali valide
🔧 Injection avec regex...
   ✓ Code injecté
🔧 Validation du résultat...
   ✓ Smali modifié valide
💾 Sauvegarde...
   ✓ Fichier sauvegardé

════════════════════════════════════════════════════════════
  PHASE 6 : RECOMPILATION
════════════════════════════════════════════════════════════
🔧 Recompilation...
   ✓ Recompilation réussie

════════════════════════════════════════════════════════════
  PHASE 7 : SIGNATURE
════════════════════════════════════════════════════════════
🔏 Signature...
   ✓ Signature réussie
   📍 APK signé: test-modified-aligned-debugSigned.apk

╔════════════════════════════════════════════════════════════╗
║                ✅ INJECTION RÉUSSIE !                      ║
╚════════════════════════════════════════════════════════════╝

📱 Installation: adb install test-modified-aligned-debugSigned.apk
```

---

## 🔬 Fonctionnement détaillé

### Code Smali injecté

Le code suivant est automatiquement inséré dans `onCreate()` de l'activité principale :

```smali
# ===== INJECTION AUTOMATIQUE - SÉCURITÉ =====
invoke-static {p0}, Lcom/security/shield/SecurityShield;->protect(Landroid/content/Context;)V
# ===========================================
```

**Où :** Juste après l'appel `invoke-super` dans la méthode `onCreate`.

**Équivalent Kotlin :**
```kotlin
override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    SecurityShield.protect(this)  // ← Code injecté
    // ... reste du code
}
```

### Détecteurs Smali

Le fichier `SecurityShield.smali` contient les détecteurs en bytecode :

**Détection d'émulateur (exemple) :**
```smali
.method private static final isEmulatorDetected()Z
    .locals 2

    # Verifier Build.HARDWARE
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;
    
    const-string v1, "goldfish"
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    
    # Si contient "goldfish" -> emulateur detecte
    move-result v0
    return v0
.end method
```

### Approche hybride AST + Regex

**Pourquoi hybride ?**

- **AST (ANTLR)** : Valide la syntaxe Smali avant et après modification
- **Regex** : Injection simple et rapide
- **Compromis** : Balance entre robustesse et simplicité

**Flux de modification :**
1. Parser le fichier Smali en AST → Validation syntaxe
2. Chercher `invoke-super` avec regex
3. Injecter le code après `invoke-super`
4. Re-parser en AST → Validation résultat
5. Sauvegarder si valide

---

## 📖 Exemples

### Exemple 1 : APK simple

**Avant injection :**
```smali
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V
    # Code original de l'app
    return-void
.end method
```

**Après injection :**
```smali
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V
    
    # ===== INJECTION AUTOMATIQUE - SÉCURITÉ =====
    invoke-static {p0}, Lcom/security/shield/SecurityShield;->protect(Landroid/content/Context;)V
    # ===========================================
    
    # Code original de l'app
    return-void
.end method
```

### Exemple 2 : Logs de détection

Quand l'app est lancée sur un **émulateur** :

```
D/SecurityShield: Initialisation du bouclier de securite...
W/SecurityShield: MODE DEVELOPPEUR DETECTE
W/SecurityShield: EMULATEUR DETECTE
E/SecurityShield: MENACES DETECTEES: Mode developpeur, Emulateur
E/SecurityShield: APPLICATION DE LA REMEDIATION...
E/SecurityShield: FERMETURE IMMEDIATE DE L'APPLICATION
```

Sur un **appareil physique** (mode dev désactivé) :

```
D/SecurityShield: Initialisation du bouclier de securite...
I/SecurityShield: Aucune menace detectee
I/SecurityShield: Demarrage de l'application autorise
```

### Exemple 3 : Protection anti-doublon

```bash
# Première injection
npm start test.apk
# ✓ Code injecté

# Deuxième injection sur le même APK
npm start test.apk
# ⚠️ Code déjà présent, injection ignorée
```

---

## 🛠️ Développement

### Scripts disponibles

```json
{
  "scripts": {
    "generate-parser": "antlr-ng -Dlanguage=TypeScript -l -v -o src/lib grammars/SmaliLexer.g4 grammars/SmaliParser.g4",
    "build": "tsc",
    "start": "npm run build && node dist/index.js",
    "clean": "rimraf dist/"
  }
}
```

### Modifier la grammaire Smali

Les grammaires ANTLR sont dans `grammars/` :

- `SmaliLexer.g4` : Définit les tokens (mots-clés, identifiants, etc.)
- `SmaliParser.g4` : Définit la structure syntaxique

Après modification :
```bash
npm run generate-parser
npm run build
```

### Ajouter des détecteurs

**1. Créer le code Smali du détecteur**

Compilez une app avec le nouveau détecteur en Kotlin, décompilez avec Apktool, récupérez le Smali.

**2. Ajouter au fichier `resources/SecurityShield.smali`**

**3. Mettre à jour la méthode `protect()` pour appeler le nouveau détecteur**

### Debug

**Afficher l'AST Smali :**

```typescript
import { SmaliPrinter } from "./lib/smaliPrinter.js";

const tree = parser.parse();
SmaliPrinter.print(tree);  // Affiche l'arbre
```

**Logs détaillés :**

Activez les logs dans `index.ts` :
```typescript
console.log("DEBUG:", variable);
```

---

## ⚠️ Limites

### Limites techniques

| Limite | Description | Impact |
|--------|-------------|--------|
| **Code facilement contournable** | SecurityShield.smali visible en clair | Attaquant peut le supprimer |
| **Injection dans 1 activité** | Seule l'activité MAIN est protégée | Autres points d'entrée non protégés |
| **Pas d'obfuscation** | Code non obfusqué | Facile à analyser |
| **Structure standard requise** | Suppose ComponentActivity, onCreate, etc. | Ne fonctionne pas sur toutes les apps |

### Limites fonctionnelles

- **Faux positifs** : Mode développeur détecté pour développeurs légitimes
- **Remédiation stricte** : Fermeture immédiate peut frustrer
- **Pas de télémétrie** : Impossible de tracker les détections
- **Pas de mode dégradé** : Tout ou rien

### Contournements possibles

Un attaquant peut :
1. Commenter l'appel à `SecurityShield.protect()`
2. Modifier `SecurityShield.smali` pour ne rien faire
3. Utiliser des outils anti-détection (Magisk Hide, etc.)
4. Patcher le bytecode avec d'autres outils

### Améliorations futures

- Obfuscation du code de protection
- Support complet Java (actuellement Kotlin principalement)
- Injection dans classe `Application` (protection globale)
- Code natif (JNI) pour détections critiques
- Configuration externe (JSON)
- Mode dégradé (au lieu de fermeture)
- Télémétrie (backend pour analytics)

---
alités
- ✅ Ajoutez des tests si possible

---

## 👥 Auteurs

- **Majdi Benboubaker**



[Documentation](https://github.com/votre-username/binary-injector/wiki) • [Report Bug](https://github.com/votre-username/binary-injector/issues) • [Request Feature](https://github.com/votre-username/binary-injector/issues)

</div>
