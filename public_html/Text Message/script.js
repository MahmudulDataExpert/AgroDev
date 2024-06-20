const form = document.querySelector("form"),
statusTxt = form.querySelector(".button-area span");

form.onsubmit = (e)=>{
  e.preventDefault();
  statusTxt.style.color = "#0D6EFD";
  statusTxt.style.display = "block";
  statusTxt.innerText = "Sending your message...";
  form.classList.add("disabled");

  let xhr = new XMLHttpRequest();
  xhr.open("POST", "message.php", true);
  xhr.onload = ()=>{
    if(xhr.readyState == 4 && xhr.status == 200){
      let response = xhr.response;
      if(response.indexOf("Email and message field is required!") != -1 || response.indexOf("Enter a valid email address!") != -1 || response.indexOf("Sorry, failed to send your message!") != -1){
        statusTxt.style.color = "red";
      }else{
        form.reset();
        setTimeout(()=>{
          statusTxt.style.display = "none";
        }, 3000);
      }
      statusTxt.innerText = response;
      form.classList.remove("disabled");
    }
  }
  let formData = new FormData(form);
  xhr.send(formData);
}

const wr = document.querySelector(".wr"),
selectBtn = wr.querySelector(".select-btn"),
searchInp = wr.querySelector("input"),
options = wr.querySelector(".options");

let Dis = ["Grain crops","Fiber crops",
"Pulse crops",
"Oil crops",
"Cash crops",
"Vegetable crops",
"Fruit crops",
"Flower crops",
"Spice crops",
"Spring crops",
"Others crops"                           
];

function addDiseases(selectedDiseases) {
    options.innerHTML = "";
    Dis.forEach(diseases => {
        let isSelected = diseases == selectedDiseases ? "selected" : "";
        let li = `<li onclick="updateName(this)" class="${isSelected}">${diseases}</li>`;
        options.insertAdjacentHTML("beforeend", li);
    });
}
addDiseases();

function updateName(selectedLi) {
    searchInp.value = "";
    addDiseases(selectedLi.innerText);
    wr.classList.remove("active");
    selectBtn.firstElementChild.innerText = selectedLi.innerText;
}

searchInp.addEventListener("keyup", () => {
    let arr = [];
    let searchWord = searchInp.value.toLowerCase();
    arr = Dis.filter(data => {
        return data.toLowerCase().startsWith(searchWord);
    }).map(data => {
        let isSelected = data == selectBtn.firstElementChild.innerText ? "selected" : "";
        return `<li onclick="updateName(this)" class="${isSelected}">${data}</li>`;
    }).join("");
    options.innerHTML = arr ? arr : `<p style="margin-top: 10px;"> Diseases not found</p>`;
});

selectBtn.addEventListener("click", () => wr.classList.toggle("active"));