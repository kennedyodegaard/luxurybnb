import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#title', {
    strings: ["Go near", "Go luxury"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
