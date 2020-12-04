import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  if (document.getElementById("title")) {
    new Typed('#title', {
      strings: ["Go near.", "Go luxury."],
      typeSpeed: 50,
      loop: true
    });
  };
}

export { loadDynamicBannerText };
