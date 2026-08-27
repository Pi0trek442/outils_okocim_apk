# 🧮 Okocim — Suite d'outils de calcul autonomes

**Okocim** est une application mobile Android développée avec Flutter. Elle embarque une suite d'outils et de calculateurs Web (financiers, comparateurs, etc.) fonctionnant à 100 % hors-ligne grâce à une WebView locale.

---

## 🚀 Fonctionnalités

* **100 % Autonome & Hors-ligne** : Aucune dépendance à un serveur distant, tous les calculs sont exécutés en local dans le navigateur embarqué.
* **Comparateur de Prix** : Compare les offres au poids (g, kg, mg), au volume (ml, cl, L) ou à l'unité/lot avec détection automatique de la meilleure offre et sauvegarde locale (`localStorage`).
* **Calculateurs Financiers** :
  * Calculs de pourcentages (variations, augmentations, réductions).
  * Intérêts composés et capitalisation.
  * Simulation d'impact des frais.
  * Crédit immobilier (mensualités, coût total, amortissement).
  * Simulation d'inflation et perte de pouvoir d'achat.
* **Interface Sombre (Dark Mode)** : Design moderne optimisé pour la lisibilité et l'économie d'énergie.

---

## 🛠️ Stack Technique

* **Framework Mobile** : [Flutter](https://flutter.dev/) (Android)
* **WebView Engine** : `webview_flutter`
* **Front-end embarqué** : HTML5, CSS3 (variables CSS, flexbox/grid), JavaScript ES6 Vanilla

---

## 📂 Structure du Projet

```text
outils_okocim/
├── android/               # Configuration et scripts de build Android
├── assets/                # Pages HTML, CSS, JS et icône de l'application
│   ├── outils.html        # Sommaire / Index principal
│   ├── prix.html          # Comparateur de prix
│   ├── calculateur-*.html # Les différents outils financiers
│   └── aap_icon.png          # Visuel de l'icône d'application
├── lib/
│   └── main.dart          # Point d'entrée Flutter et composant WebView
└── pubspec.yaml           # Configuration des dépendances et assets