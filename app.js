let el = document.getElementsByClassName("reveal")[0];

let body = document.getElementsByTagName("body")[0];
body.style.backgroundImage = "url('img/banner.png')";
body.style.backgroundRepeat = "no-repeat";
body.style.backgroundPosition = "bottom";
body.style.backgroundSize = "contain";

let footer = document.createElement("footer");
footer.style.backgroundColor = "#2841f9";
footer.style.height = "75px";
footer.style.width = "100%";
footer.style.position = "fixed";
footer.style.left = "0px";
footer.style.bottom = "0px";

let list = document.createElement("ul");
list.style.width = "100%";
list.style.listStyle = "none";
list.style.display = "table";
list.style.tableLayout = "fixed";

list.style.color = "white";

for (var i = 0; i < 5; i++) {
    let li = document.createElement("li");
    li.className += " footer-list";
    li.style.fontSize = "1.5rem";
    li.style.display = "table-cell";
    li.style.textAlign = "center";
    li.style.margin = "15px";
    list.appendChild(li);
}
footer.appendChild(list);
el.appendChild(footer);

let lis = document.getElementsByClassName("footer-list");
console.log(lis);

let website = document.createElement("span");
website.innerHTML = "container-solutions.com";
lis[0].appendChild(website);

let email = document.createElement("span");
email.innerHTML = "info@container-solutions.com";
lis[1].appendChild(email);

let logo = document.createElement("img");
logo.src = "img/secondary_white@4x.png";
logo.width = 75;
logo.height = 50;
logo.style.paddingTop = "10px";
lis[2].appendChild(logo);

let name = document.createElement("span");
name.innerHTML = "Presentation name";
lis[3].appendChild(name);

let twitter = document.createElement("span");
twitter.innerHTML = "@twitter";
lis[4].appendChild(twitter);
