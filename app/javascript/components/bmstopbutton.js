import lottie from 'lottie-web';
import animationData from '../../../public/images/datastopb.json';


const animationStop = () => {

  const loader = document.getElementById('bm-stop-button')

  if (loader) {
    lottie.loadAnimation({
      container: loader, // the dom element that will contain the animation
      renderer: 'svg',
      loop: true,
      autoplay: true,
      animationData: animationData // the path to the animation json
    });
  }

  }

export { animationStop };
