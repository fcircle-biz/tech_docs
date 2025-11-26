const { chromium } = require('playwright');

(async () => {
  const url = process.argv[2];
  if (!url) {
    console.error('Usage: node get-detailed-dimensions.js <file_or_url>');
    process.exit(1);
  }

  const browser = await chromium.launch();
  const page = await browser.newPage();
  await page.goto(url, { waitUntil: 'networkidle' });

  const details = await page.evaluate(() => {
    const container = document.querySelector('.slide-container');
    const content = document.querySelector('.content');
    
    if (!container) return { error: 'No .slide-container found' };
    
    const containerRect = container.getBoundingClientRect();
    const contentRect = content ? content.getBoundingClientRect() : null;
    const scrollHeight = container.scrollHeight;
    
    // CSS設定値も取得
    const containerStyle = window.getComputedStyle(container);
    
    return {
      container: {
        width: Math.ceil(containerRect.width),
        height: Math.ceil(containerRect.height),
        scrollHeight: scrollHeight,
        cssWidth: containerStyle.width,
        cssHeight: containerStyle.height,
        cssMinHeight: containerStyle.minHeight
      },
      content: contentRect ? {
        width: Math.ceil(contentRect.width),
        height: Math.ceil(contentRect.height)
      } : null
    };
  });

  console.log('Detailed dimensions:');
  console.log(JSON.stringify(details, null, 2));
  await browser.close();
})();