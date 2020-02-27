import lottie from 'lottie-web';
import animationData from '../../../public/images/data.json';


const animation = () => {

const loader = document.getElementById('bm')

    const animationTest = lottie.loadAnimation({
    container: loader, // the dom element that will contain the animation
    renderer: 'svg',
    loop: true,
    autoplay: true,
    animationData: animationData // the path to the animation json
  });

  loader.addEventListener("mouseenter", function() {
     animationTest.play();
   });
   loader.addEventListener("mouseleave", function() {
     animationTest.stop();
   });
  }

export { animation };
