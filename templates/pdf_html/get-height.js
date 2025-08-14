const { chromium } = require('playwright');

(async () => {
  const url = process.argv[2];
  if (!url) {
    console.error('Usage: node get-height.js <file_or_url>');
    process.exit(1);
  }

  const browser = await chromium.launch();
  const page = await browser.newPage();
  await page.goto(url, { waitUntil: 'networkidle' });

  // .slide-container があればその高さ、なければページ全体の高さ
  const height = await page.evaluate(() => {
    const el = document.querySelector('.slide-container') || document.documentElement;
    return Math.ceil(el.getBoundingClientRect().height);
  });

  console.log(`Height: ${height}px`);
  await browser.close();
})();