//atualiza combos com opcoes de filtro
function updateFiltersOptions(elementId){
    
    var target = document.getElementById(elementId);

    switch (elementId) {
        case "cbcurso":
            //cursos
            populateCbOptions(target, cbFilterData.cursos);
            break;
        case "cbregiao":
            //regiao
            populateCbOptions(target, cbFilterData.regiao);    
    }


}

function clearCbOptions(cbelement){
    cbelement.options.length = 0;
}

/*function addDefaultOption(cbelement){
    var newOption = document.createElement("option");
    newOption.text = "Selecione";
    newOption.setAttribute('disabled', 'disabled');
    newOption.setAttribute('selected', 'selected');
    newOption.setAttribute('value', 'value');
    cbelement.add(newOption);    
}*/

function populateCbOptions(cbelement, options){

    sorted_options = options.sort();

    sorted_options.forEach(op => {
        var newOption = document.createElement("option");
        newOption.text = op;
        cbelement.add(newOption);    
    });        
}