let products = ['LG', 'Monitor', 'Asus', 'Laptop', '5432', 'Mix', 'For', 'Youtuber',
'Bluetooth', 'Adapter', 'Solo', 'Leveling', 'Webtoon', 'Panasoni', 'Air',
'Conditioner', 'Karaoke', 'Bazooka', 'PowerBank', '24', 'Hours',
'Backpack', 'of', 'Holding', 'Game', 'Box', '5', 'Universal', 'Gadget',
'Charger', 'USB', 'Squirming', 'Tentacle', 'USB', 'Fishquarium', 'Intel',
'Processor', '8', 'core', 'Space', 'Bar', 'Keyboard', 'Organizer', '&',
'USB', 'Hub', 'Pop', 'USB', 'Pet', 'Rock', 'Powerstation', '5', 'Dual',
'Heated', 'Travel', 'Mug', 'Crosley', 'Collegiate', 'Portable', 'USB',
'Turntable', 'Hoodie', 'AK-47'];

//arrow function filter
const filterProduct = (prefix,prods) => prods.filter(pro => pro.startsWith(prefix));

console.log(filterEmployee("A",products));
console.log(filterEmployee("S",products));
