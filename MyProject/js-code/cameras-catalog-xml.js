function createXMLDocument() {
    let documentImplementation = document.implementation;
    let doc = documentImplementation.createDocument(null, null);

    //camera-catalog трябва да се оправи името в xml
    let catalog = doc.createElement("catalog");
    doc.appendChild(catalog);


    let brand_info = doc.createElement("brand_info");
    catalog.appendChild(brand_info);

    let brand_info_brand = doc.createElement("brand");
    brand_info.appendChild(brand_info_brand);
    brand_info_brand.appendChild(doc.createTextNode("Canon"));


    let brand_info_realise_date = doc.createElement("realise_date");
    brand_info.appendChild(brand_info_realise_date);
    brand_info_realise_date.appendChild(doc.createTextNode("10.09.1937"));


    let cameras = doc.createElement("cameras");
    catalog.appendChild(cameras);

    let camera = doc.createElement("camera");
    cameras.appendChild(camera);
    camera.setAttribute("type", "mirrorless");
    camera.setAttribute("resistance", "water-dust-proof");

    let camera_brand_info = doc.createElement("brand_info");
    camera.appendChild(camera_brand_info);

    //?
    let camer_brand_info_brand = doc.createElement("brand");
    camera_brand_info.appendChild(camer_brand_info_brand);
    camer_brand_info_brand.appendChild(doc.createTextNode("Canon"));

    let camera_brand_info_realise_date = doc.createElement("realise_date");
    camera_brand_info.appendChild(camera_brand_info_realise_date);
    camera_brand_info_realise_date.appendChild(doc.createTextNode("09.07.2020"));

    //
    let model = doc.createElement("model");
    camera.appendChild(model);
    model.appendChild(doc.createTextNode("EOS R5"));

    let price = doc.createElement("price");
    camera.appendChild(price);
    price.setAttribute("currency", "лв");
    price.appendChild(doc.createTextNode("4200"));

    let color = doc.createElement("color");
    camera.appendChild(color);
    color.appendChild(doc.createTextNode("Черен"));

    let image = doc.createElement("image");
    camera.appendChild(image);
    image.appendChild(doc.createTextNode("Canon_EOS_R5.jpg"));

    //features
    let features = doc.createElement("features");
    camera.appendChild(features);



    let effective_pixels = doc.createElement("effective_pixels");
    features.appendChild(effective_pixels);
    effective_pixels.appendChild(doc.createTextNode("45"));
    effective_pixels.setAttribute("px", "мегапиксела");

    let wi_fi = doc.createElement("wi-fi");
    features.appendChild(wi_fi);
    wi_fi.setAttribute("has", "Yes");


    let processor = doc.createElement("processor");
    features.appendChild(processor);
    processor.appendChild(doc.createTextNode("DIGIC X"));

    let display = doc.createElement("display");
    features.appendChild(display);
    display.appendChild(doc.createTextNode("Clear View LCD II"));

    let video = doc.createElement("video");
    features.appendChild(video);
    video.setAttribute("max-duration", "29:59");
    video.appendChild(doc.createTextNode("8K/4K/Full HD"));

    //
    let physical_specifications = doc.createElement("physical-specifications");
    camera.appendChild(physical_specifications);

    let size = doc.createElement("size");
    physical_specifications.appendChild(size);
    size.setAttribute("s_unit", "mm");
    size.appendChild(doc.createTextNode("138,5 x 97,5 x 88"));

    let weight = doc.createElement("weight");
    physical_specifications.appendChild(weight);
    weight.setAttribute("w_unit", "g");
    weight.appendChild(doc.createTextNode("650"));

    //
    let power_supply = doc.createElement("power_supply");
    camera.appendChild(power_supply);

    let battery = doc.createElement("battery");
    power_supply.appendChild(battery);
    battery.appendChild(doc.createTextNode("Акумулаторна литиево-йонна батерия LP-E6NH"));

    let energy_saving = doc.createElement("energy_saving");
    power_supply.appendChild(energy_saving);
    energy_saving.appendChild(doc.createTextNode("Захранването се изключва след 30 секунди, 1, 3, 5, 10 или 30 минути"));

    let charger = doc.createElement("charger");
    power_supply.appendChild(charger);
    charger.appendChild(doc.createTextNode("Зарядно устройство за батерии LC-E6E (в комплекта), AC адаптер AC-E6N и DC съединител DR-E6"));


    return doc;























}