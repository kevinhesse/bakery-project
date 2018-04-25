
var elem = document.querySelector('.slider');
var instance = M.Slider.init(elem, options);
instance = M.Slider.getInstance(elem);

instance.start();
instance.next();

console.log("hello")