# Droop ERP

Modern, ölçeklenebilir bir ERP sistemi. Firebase, Next.js 15 ve TypeScript ile geliştirilmiştir.

## 🚀 Özellikler

- **Point of Sale (POS)**: Retail ve Restaurant modları ile tam özellikli POS sistemi
- **Dashboard**: Kapsamlı analitik ve raporlama
- **Loyalty Program**: Müşteri sadakat programı yönetimi
- **GDPR Tools**: Veri koruma ve uyumluluk araçları
- **AI Assistant**: Genkit ile güçlendirilmiş AI asistanı
- **Multi-tenant**: Çoklu kiracı desteği
- **Real-time Updates**: Firebase Firestore ile gerçek zamanlı güncellemeler

## 📋 Gereksinimler

- Node.js 20.x veya üzeri
- npm veya yarn
- Firebase hesabı
- Firebase CLI (deployment için)

## 🛠️ Kurulum

1. **Repository'yi klonlayın:**
   ```bash
   git clone https://github.com/krcn82/drooperp-clean.git
   cd drooperp-clean
   ```

2. **Bağımlılıkları yükleyin:**
   ```bash
   npm install
   ```

3. **Environment variables'ları ayarlayın:**
   ```bash
   cp .env.example .env.local
   ```
   
   `.env.local` dosyasını düzenleyip Firebase yapılandırma bilgilerinizi ekleyin.

4. **Firebase Functions bağımlılıklarını yükleyin:**
   ```bash
   cd functions
   npm install
   cd ..
   ```

5. **Development server'ı başlatın:**
   ```bash
   npm run dev
   ```

   Uygulama [http://localhost:3000](http://localhost:3000) adresinde çalışacaktır.

## 📁 Proje Yapısı

```
drooperp-clean/
├── src/
│   ├── app/              # Next.js App Router sayfaları
│   │   ├── dashboard/   # Dashboard sayfaları
│   │   ├── login/       # Giriş sayfası
│   │   └── register/    # Kayıt sayfası
│   ├── components/      # React bileşenleri
│   │   ├── ui/          # UI bileşenleri (shadcn/ui)
│   │   ├── ai/          # AI bileşenleri
│   │   └── pos/         # POS bileşenleri
│   ├── firebase/        # Firebase yapılandırması ve hooks
│   ├── hooks/           # Custom React hooks
│   ├── lib/             # Yardımcı fonksiyonlar ve utilities
│   └── ai/              # Genkit AI yapılandırması
├── functions/           # Firebase Cloud Functions
│   ├── src/            # TypeScript kaynak dosyaları
│   └── lib/            # Derlenmiş JavaScript dosyaları
├── public/             # Statik dosyalar
└── .github/            # GitHub Actions workflows
```

## 🧪 Geliştirme

### Mevcut Script'ler

- `npm run dev` - Development server'ı başlatır (Turbopack ile)
- `npm run build` - Production build oluşturur
- `npm run start` - Production server'ı başlatır
- `npm run lint` - ESLint ile kod kontrolü yapar
- `npm run typecheck` - TypeScript tip kontrolü yapar
- `npm run test` - Jest ile testleri çalıştırır
- `npm run genkit:dev` - Genkit AI development server'ı başlatır

### Import Path'leri

Proje `@/` prefix'li import path'leri kullanır:
- `@/components` → `src/components`
- `@/lib` → `src/lib`
- `@/hooks` → `src/hooks`
- `@/firebase` → `src/firebase`
- `@/app` → `src/app`

## 🔥 Firebase Yapılandırması

1. Firebase Console'da yeni bir proje oluşturun
2. Firebase CLI ile giriş yapın:
   ```bash
   firebase login
   ```
3. Projeyi başlatın:
   ```bash
   firebase init
   ```
4. `.firebaserc` dosyasında proje ID'nizi kontrol edin

## 🚢 Deployment

### Firebase App Hosting

Proje Firebase App Hosting kullanılarak deploy edilir. GitHub Actions workflow'u otomatik olarak deployment yapar.

**GitHub Secrets ayarları:**
- `FIREBASE_SERVICE_ACCOUNT`: Firebase service account JSON
- `FIREBASE_PROJECT`: Firebase proje ID'si

### Manuel Deployment

```bash
# Functions build
cd functions
npm run build
cd ..

# Firebase deploy
firebase deploy
```

## 🧩 Teknolojiler

- **Framework**: Next.js 15 (App Router)
- **Language**: TypeScript
- **Styling**: Tailwind CSS
- **UI Components**: shadcn/ui (Radix UI)
- **Backend**: Firebase (Firestore, Auth, Functions)
- **AI**: Google Genkit
- **State Management**: Zustand
- **Forms**: React Hook Form + Zod
- **Testing**: Jest + React Testing Library

## 📝 Lisans

Bu proje özel bir projedir.

## 🤝 Katkıda Bulunma

1. Fork yapın
2. Feature branch oluşturun (`git checkout -b feature/amazing-feature`)
3. Değişikliklerinizi commit edin (`git commit -m 'Add some amazing feature'`)
4. Branch'inizi push edin (`git push origin feature/amazing-feature`)
5. Pull Request oluşturun

## 📧 İletişim

Sorularınız için issue açabilirsiniz.
