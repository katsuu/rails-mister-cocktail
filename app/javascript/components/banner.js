import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Well behaved girls", "Don't make history"],
    typeSpeed: 60,
    loop: true
  });
}

export { loadDynamicBannerText };
