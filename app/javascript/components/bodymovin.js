import lottie from 'lottie-web';
import animationData from '../../../public/images/data.json';


const animation = () => {
    lottie.loadAnimation({
    container: document.getElementById('bm'), // the dom element that will contain the animation
    renderer: 'svg',
    loop: true,
    autoplay: true,
    animationData: animationData // the path to the animation json
  });
}

export { animation };
