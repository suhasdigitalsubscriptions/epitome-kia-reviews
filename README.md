# Epitome Kia - AI Review Generator Web Application

A modern, responsive, luxury dealership web application crafted for **Epitome Kia**. Ready for **Vercel** deployment with 5 dedicated outlet index pages and clean URLs.

---

## 🌐 Live URL Structure on Vercel

When deployed to Vercel (e.g. `epitome-kia.vercel.app`):

| Outlet | Dedicated Page URL | Direct Google Review Redirect Link |
|---|---|---|
| **Whitefield** | `/whitefield` (or `/whitefield/index.html`) | `https://g.page/r/CbqyLezxFvTnEAE/review` |
| **Yelahanka** | `/yelahanka` (or `/yelahanka/index.html`) | `https://g.page/r/CdwykWTyxFtHEAE/review` |
| **Kolar** | `/kolar` (or `/kolar/index.html`) | `https://g.page/r/CfKgHsBhUWOkEAE/review` |
| **Avalahalli** | `/avalahalli` (or `/avalahalli/index.html`) | `https://g.page/r/CRHs-ffcipIZEAE/review` |
| **Varthur** | `/varthur` (or `/varthur/index.html`) | `https://g.page/r/CcVMIaB4ukHHEAE/review` |
| **Main Portal** | `/` (`/index.html`) | Interactive portal with outlet selector |

> 📱 **Showroom QR Code Tip:** You can create a QR code for each showroom table linking directly to its dedicated page (e.g., `yoursite.vercel.app/whitefield`). When visitors or buyers scan it, it immediately generates reviews tailored for that branch and redirects straight to that branch's Google Review rating popup!

---

## 🌟 Key Application Architecture

### 1. Three Customer Journeys (Page 1)
- **1. Walk Through Customer (General Showroom Visitor)**
  - *Touchpoints:* Showroom Ambience, Hospitality, Vehicle Display, Walk Through, Sales Consultant, Customer Service.
- **2. Test Drive Customer (Behind the Wheel)**
  - *Touchpoints:* Showroom Ambience, Hospitality, Vehicle Display, Walk Through, Sales Consultant, Customer Service, Test Drive Process, Vehicle Condition.
- **3. Purchased Customer Review (Car Delivery)**
  - *Touchpoints:* Showroom Ambience, Showroom Staff, Hospitality, Sales Consultant, Loan Process, Insurance Process, Delivery Process, Vehicle Condition, Vehicle Allocation, Accessories.

---

### 2. Context-Aware Vehicle Selection (Page 2)
The prompt adapts according to the customer category:
- **Walk Through:** *"Which Kia Car are you currently looking into?"*
- **Test Drive:** *"Which Kia Car you took the Test Drive for?"*
- **Car Delivery:** *"Which Kia Car you had taken the delivery?"*

**Vehicle Models Included:**
- New Seltos *(The Badass SUV)*
- Sonet *(Compact SUV)*
- Carens *(Family Recreational Vehicle)*
- Carnival *(Luxury Limousine)*
- Kia EV6 *(All-Electric Crossover)*
- Kia EV9 *(Flagship Electric SUV)*

---

### 3. Dedicated Outlet Review Engine & Redirection
- Generates natural, human-written reviews strictly adhering to 3–4 sentences.
- Built-in randomization variation engine prevents repetitive reviews, ensuring each review generated is unique.
- **One-Click "Copy & Redirect to Google Review"**: Automatically copies the generated 3–4 line review to clipboard and opens the outlet's Google Review page directly in a new tab.

---

## 🚀 How to Deploy on Vercel

### Method 1: Via Vercel Web Dashboard (Drag & Drop or GitHub)
1. Go to [vercel.com](https://vercel.com) and log in.
2. Click **"Add New..."** > **"Project"**.
3. Import your GitHub repository, **OR** install Vercel CLI.

### Method 2: Via Vercel CLI (Super Fast)
Run in PowerShell inside `epitome-kia-review-generator`:
```bash
npx vercel
```
Or if you have the Vercel CLI:
```bash
vercel --prod
```
The included [`vercel.json`](./vercel.json) automatically configures clean URLs and routing for `/whitefield`, `/yelahanka`, `/kolar`, `/avalahalli`, and `/varthur`.
