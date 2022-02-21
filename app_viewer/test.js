


// ----

document.addEventListener('DOMContentLoaded', () => {
    let url = "http://docketu.iutnc.univ-lorraine.fr:62340/items/contenu_sequence?fields=contenu_id_contenu&filter[sequence_id_sequence][_eq]=1"
    let sandwich = axios.get(url).then(result => {
        console.log(JSON.stringify(result.data));
        
        return JSON.stringify(result.data);
    }).catch(error => {
        console.error(error);
    });
    
    console.log(sandwich);
    // console.log('DOM fully loaded and parsed');
    // let result = fetchContentInSequence();
    // console.log(result);
    // axios.get('http://docketu.iutnc.univ-lorraine.fr:62340/items/contenu_sequence?fields=contenu_id_contenu&filter[sequence_id_sequence][_eq]=1').then(result => {

    //     console.log(result.data.data);
    // });
})