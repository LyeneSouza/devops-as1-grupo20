// Lista de names
const names = [
    "Alana Motta da Cruz",
    "Aline Birck Bourscheidt Bays",
    "Joyce Mayara Gonçalves de Oliveira",
    "Lyene de Souza Benvenutti"
  ];
  
  function addNameToBody(name) {
    const element = document.createElement("div");
    element.innerText = name;
    document.body.appendChild(element);
  }
  
  function displayNames() {
    names.forEach((name, index) => {
        setTimeout(() => {
            addNameToBody(name);

            if (index === names.length - 1) {
                setTimeout(() => {
                    funnyButton();
                }, 1000);
            }
        }, (index + 1) * 1000);
    });
}
  
function funnyButton() {
        const container = document.createElement('div');    
        const button = document.createElement('button');
        button.innerText = 'Clique aqui 👀';
    
        container.appendChild(button);
        document.body.appendChild(container);

    button.addEventListener('click', function() {
        const container = document.createElement('div')
        const img = document.createElement('img');
        img.src = 'https://pbs.twimg.com/media/EgmOqHTWoAAKOPt.jpg';
        container.appendChild(img);
        document.body.appendChild(container);

        button.remove();

        const message = document.createElement('h2');
        message.innerText = 'Nota 10 para o grupo 20, que tal?';
        document.body.appendChild(message);
    });
}
    displayNames();


  
  

  