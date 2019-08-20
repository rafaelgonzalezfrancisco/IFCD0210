const marvel = {
  render: () => {
    const urlAPI = 'https://gateway.marvel.com/v1/public/characters?ts=1&apikey=f20c4c4aae255b4443dab8475d0bfd7f&hash=a692c21c39ac7304847541e9a2cced7f';
    /*https://gateway.marvel.com:443/v1/public/characters?ts=1&apikey=737562c7240da5cebb9c05ba9e4eb477&hash=adffcb29a9222039bdbe65c461a4b287*/
    const container = document.querySelector('#marvel-row');
    let contentHTML = '';

    fetch(urlAPI)
      .then(res => res.json())
      .then((json) => {
        for (const hero of json.data.results) {
          let urlHero = hero.urls[0].url;
          contentHTML += `
            <div class="col-md-4">
                <a href="${urlHero}" target="_blank">
                  <img src="${hero.thumbnail.path}.${hero.thumbnail.extension}" alt="${hero.name}" class="img-thumbnail">
                </a>
                <h3 class="title">${hero.name}</h3>
            </div>`;
        }
        container.innerHTML = contentHTML;
      })
  }
};
marvel.render();