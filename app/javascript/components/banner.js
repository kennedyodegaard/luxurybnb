import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  if (document.getElementById("title")) {
    new Typed('#title', {
      strings: ["The world's most beautiful homes.", "The world's most extraordinary homes."],
      typeSpeed: 50,
      loop: true
    });
  };
}

export { loadDynamicBannerText };
