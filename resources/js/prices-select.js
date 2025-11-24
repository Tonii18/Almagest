// document.addEventListener('DOMContentLoaded', () =>{

//     select = document.getElementsById("min_price")

//     for(let i = 1; i <= 50; i++){
//         option = document.createElement("option");
//         option.value = i;
//         option.text = i;

//         select.appendChild(option);
//     }

// });

function showPrices(){
    let prices = []
    for(let i = 1; i <= 50; i++){
        prices.push(i);
    }

    for(let i = 1; i <= 50; i++){
        insertPrice(prices[i]);
    }
}

function insertPrice(price){
    const selectElement = document.getElementById("min_price");
    let htmlToInsert = `<option> ${price} </option>`;
    selectElement.insertAdjacentHTML("beforeend", htmlToInsert);
}
