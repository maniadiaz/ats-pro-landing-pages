#!/bin/bash
set -e

echo "🚀 Iniciando build de ATS Pro..."
npm run build

echo "🧹 Limpiando directorio de producción..."
sudo rm -rf /var/www/ats-pro/*

echo "📦 Copiando archivos estáticos..."
sudo cp -r dist/* /var/www/ats-pro/

echo "✅ Deploy completado"
echo "   Sitio disponible en: http://atspro.mx"
