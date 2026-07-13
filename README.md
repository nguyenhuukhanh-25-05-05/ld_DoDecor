# YOU BRAND — Nghệ thuật trang trí không gian sống

Landing page cho thương hiệu nội thất & decor tối giản YOU BRAND, xây dựng bằng Vue 3 + Vite + Tailwind CSS.

## Công nghệ

- **Vue 3** — Composition API, `<script setup>`
- **Vite** — build tool
- **Tailwind CSS v3** — utility-first CSS
- **Lucide Vue** — icons
- **Plus Jakarta Sans** — Google Fonts

## Cấu trúc

```
src/
├── models/              # Dữ liệu tĩnh (categories, products, ...)
├── viewmodels/          # ViewModel (useLandingViewModel)
├── views/               # Page-level component (LandingPageView)
└── components/          # Section components
    ├── HeaderNav.vue
    ├── HeroSection.vue
    ├── CategorySection.vue
    ├── ProductSection.vue
    ├── ProcessSection.vue
    ├── EditorialSection.vue
    ├── TestimonialSection.vue
    ├── GallerySection.vue
    ├── CtaBanner.vue
    ├── PressBar.vue
    └── FooterSection.vue
```

## Yêu cầu

- Node.js >= 18

## Cài đặt

```bash
npm install
```

## Chạy dev

```bash
npm run dev
```

## Build production

```bash
npm run build
```

## Deploy lên GitHub Pages

```bash
npm run deploy
```

Site sẽ được publish tại:
👉 `https://<username>.github.io/ld_DoDecor/`
