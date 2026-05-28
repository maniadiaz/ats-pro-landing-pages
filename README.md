# ATS Pro — Landing Page

Landing page de marketing para **ATS Pro**, un SaaS de reclutamiento con inteligencia artificial (GPT-4o) orientado al mercado mexicano.

## Stack

- [Astro 6](https://astro.build) — output estático
- CSS puro con custom properties (sin Tailwind)
- Vanilla JS para animaciones (IntersectionObserver)
- [EmailJS](https://emailjs.com) para el formulario de contacto
- Fuentes: Barlow Condensed + Plus Jakarta Sans (Google Fonts)

## Estructura

```
src/
├── layouts/
│   └── Layout.astro        # HTML base, CSS global, design tokens
├── components/
│   ├── Navbar.astro
│   ├── Hero.astro
│   ├── HowItWorks.astro
│   ├── Features.astro
│   ├── LiveDemo.astro      # Demo interactivo 3 pasos
│   ├── Pricing.astro       # Plan Pro $999 MXN
│   ├── Testimonials.astro
│   ├── CTAFinal.astro      # Formulario EmailJS
│   └── Footer.astro
└── pages/
    └── index.astro
```

## Desarrollo local

```bash
npm install
npm run dev        # http://localhost:4321
npm run build      # genera dist/
npm run preview    # preview del build
```

## EmailJS

El formulario de contacto usa EmailJS. Para activarlo edita [src/components/CTAFinal.astro](src/components/CTAFinal.astro):

```js
const EMAILJS_PUBLIC_KEY = 'YOUR_PUBLIC_KEY'; // emailjs.com → Account → Public Key
const EMAILJS_SERVICE_ID  = 'service_xln1fvo';
const EMAILJS_TEMPLATE_ID = 'template_67znz1o';
```

El template debe tener las variables: `{{from_name}}`, `{{from_email}}`, `{{subject}}`, `{{message}}`.

## Deploy

```bash
bash build.sh      # build + copia a /var/www/ats-pro/
```

El archivo [nginx.conf](nginx.conf) contiene la configuración para el dominio, gzip, caché de assets y headers de seguridad.
