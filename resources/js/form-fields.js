document.addEventListener('DOMContentLoaded', () =>{

    const selectMin = document.getElementById("min_price")

    for(let i = 1; i <= 50; i++){
        const optionMin = document.createElement("option");
        optionMin.value = i;
        optionMin.text = i;

        selectMin.appendChild(optionMin);
    }

    const selectedValueMin = selectMin.getAttribute("data-selected");
    if (selectedValueMin) {
        selectMin.value = selectedValueMin;
    }

    const selectMax = document.getElementById("max_price");

    for(let i = 2; i <= 100; i++){
        const optionMax = document.createElement("option");
        optionMax.value = i;
        optionMax.text = i;

        selectMax.appendChild(optionMax);
    }

    const selectedValueMax = selectMax.getAttribute("data-selected");
    if (selectedValueMax) {
        selectMax.value = selectedValueMax;
    }

    const radioButtons = document.querySelectorAll('input[name="radio"]');
    radioButtons.forEach(radio => {
        radio.addEventListener('change', function() {
            if(this.value == "number"){
                number();
            }else if(this.value == "simple_value"){
                simple_value();
            }else if(this.value == "compound_value"){
                compound_value();
            }
        });
    });
});

function number(){

    const container = document.getElementById("select-container");

    const htmlSelect = `
    <select name="size">
        <option value="1">Nº 1</option>
        <option value="2">Nº 2</option>
        <option value="3">Nº 3</option>
    </select>
    `;

    container.innerHTML = htmlSelect;
}

function simple_value(){

    const container = document.getElementById("select-container");

    const htmlSelect = `
    <select name="size">
        <option value="3">3 Cm</option>
        <option value="5">5 Cm</option>
        <option value="10">10 Cm</option>
        <option value="20">20 Cm</option>
        <option value="30">30 Cm</option>
    </select>
    `;

    container.innerHTML = htmlSelect;
}

function compound_value(){

    const container = document.getElementById("select-container");

    const htmlSelects = `

    <input type="hidden" name="size" id="size_compound">

    <select id="width">
        <option value="">Ancho</option>
        <option value="5">5 Cm</option>
        <option value="10">10 Cm</option>
        <option value="15">15 Cm</option>
        <option value="20">20 Cm</option>
        <option value="30">30 Cm</option>
        <option value="50">50 Cm</option>
        <option value="60">60 Cm</option>
    </select>

    <select id="height">
        <option value="">Alto</option>
        <option value="0.25">0,25 Cm</option>
        <option value="0.50">0,5 Cm</option>
        <option value="1">1 Cm</option>
        <option value="2">2 Cm</option>
        <option value="5">5 Cm</option>
        <option value="25">25 Cm</option>
    </select>
    `;

    container.innerHTML = htmlSelects;

    const width = document.getElementById("width");
    const height = document.getElementById("height");
    const output = document.getElementById("size_compound");

    function updateCompoundValue() {
        if (width.value && height.value) {
            output.value = `${width.value}x${height.value}`;
        }
    }

    width.addEventListener("change", updateCompoundValue);
    height.addEventListener("change", updateCompoundValue);
}

