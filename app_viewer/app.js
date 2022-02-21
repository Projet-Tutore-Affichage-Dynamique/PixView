// http://docketu.iutnc.univ-lorraine.fr:62340
// http://docketu.iutnc.univ-lorraine.fr:62340/items/contenu?filter[id_contenu][_eq]=1


/**
 * @param {string} urlSend URL ou root API
 * @param {function} success function call in success
 * @return init page
 */
function sendXhr(urlSend, success) {
    let xhr = new XMLHttpRequest();
    xhr.open("GET", urlSend);
    xhr.responseType = 'json';

    xhr.addEventListener('load', (response) => {
        success(response.target.response)
    });
    xhr.addEventListener('error', (response) => {
        console.log("error", response);
    })
    xhr.send();
}

function convMDtoHTML(data) {
    // console.log(data.data[0].content);
    let content = data.data[0].content
    var converter = new showdown.Converter(),
        text = content,
        html = converter.makeHtml(text);
    console.log(html);
    let app = document.querySelector(".app");
    let slide = document.createElement('div');
    app.innerHTML = html
}

function fetchContentInSequence(data) {
    let array = data.data;
    let arrayResult = []

    array.forEach(element => {
        if (element.contenu_id_contenu !== null) {
            console.log(element.contenu_id_contenu);
            arrayResult.push(element.contenu_id_contenu);
        }
    });
    console.log(arrayResult);
    return arrayResult;
}

function fetchContent(array) {
    console.log(array);
    array.forEach(item => {
        let apiPixViwContent = `http://docketu.iutnc.univ-lorraine.fr:62340/items/contenu?filter[id_contenu][_eq]=${item}`;
        console.log(item);
        sendXhr(apiPixViwContent, convMDtoHTML);
    })
}

// -------------------- main

document.addEventListener('DOMContentLoaded', () => {
    console.log('DOM fully loaded and parsed');
    let apiPixViwContent = `http://docketu.iutnc.univ-lorraine.fr:62340/items/contenu?filter[id_contenu][_eq]=1`;
    let apiPixViwSequence = `http://docketu.iutnc.univ-lorraine.fr:62340/items/contenu_sequence?fields=contenu_id_contenu&filter[sequence_id_sequence][_eq]=1`;

    // console.log('API URL : ', apiPixViwSequence);
    // sendXhr(apiPixViwContent, convMDtoHTML)
    // sendXhr(apiPixViwSequence, fetchContentInSequence);
    // fetchContentInSequence(apiPixViwSequence);
});