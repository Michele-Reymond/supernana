import lottie from 'lottie-web';
import animationData from '../../../public/images/dataall.json';


const animation = () => {

  const loader = document.getElementById('bm')

  if (loader) {

      const animationTest = lottie.loadAnimation({
        container: loader, // the dom element that will contain the animation
        renderer: 'svg',
        loop: true,
        autoplay: true,
        animationData: animationData // the path to the animation json
      });

    loader.addEventListener("mouseenter", function () {
      animationTest.goToAndStop(0, true);
    });

    loader.addEventListener("mouseleave", function () {
      animationTest.play();
    });

  }
}

export { animation };

