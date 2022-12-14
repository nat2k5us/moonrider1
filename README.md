# Moon Rider

![moonrider](https://user-images.githubusercontent.com/674727/54646629-e91dc600-4a5c-11e9-8a6e-91e77f28523d.jpg)

Surf the musical road among the moon, stars, and northern lights.

A side project built by two people in a few months to show off VR running
inside a webpage. Built with HTML, JavaScript, and A-Frame. Not meant to be an
official game nor commerical product. Moon Rider is meant to be an open source
resource for the web developer community to learn from, and to push forward the
open WebXR initiative.

![gif](https://user-images.githubusercontent.com/674727/58050249-ab442900-7b03-11e9-8763-913d42a26708.gif)

**[Read more about it with elliottate at bsaber.com](https://bsaber.com/moonrider/)**

Song maps are sourced from beatsaver.com with expressed support from the Beat
Saver community admins. Supports all browsers and headsets (incl. Quest). If
there are any issues, file an issue here on GitHub or leave a message in the
[Supermedium Discord](https://supermedium.com/discord).

[**Try the site out now in your browser!**](https://supermedium.com/moonrider/)

![](https://user-images.githubusercontent.com/674727/58050969-b8621780-7b05-11e9-9494-1db7cee9f69b.jpeg)

Featuring various modes:

- **Ride Mode** - Just sit back and enjoy the ride.
- **Punch Mode** - Crush the stars.
- **Viewer Mode** - Watch the beatmap within your browser.
- **Classic Mode** - Surf and slice along the musical road.

Big thanks to @elliottate for helping out with this!

## Development

Have Node (< v12, recommended v11) and npm installed.

```bash
npm install
npm run start
```

Then head to `localhost:3000` in your browser.

### Images - seem to be hosted sperately from the server at previews.moonrider.xyz
<https://previews.moonrider.xyz/2588-image.jpg?v=2>

## Dockerizing the Demo

- docker build . -t traderide:latest -t nbontha/tradeinvr
- docker push nbontha/tradeinvr:latest
- helm upgrade --install trade-in-vr --namespace=nbontha charts/tradevr -f charts/tradevr/values.yaml --set image.tag=latest

<!-- Release "trade-in-vr" does not exist. Installing it now.
NAME: trade-in-vr
LAST DEPLOYED: Mon Aug 22 23:25:53 2022
NAMESPACE: nbontha
STATUS: deployed
REVISION: 1
NOTES:

1. Get the application URL by running these commands: -->
 ```bash
  export NODE_PORT=$(kubectl get --namespace nbontha -o jsonpath="{.spec.ports[0].nodePort}" services trade-in-vr-tradevr)
  export NODE_IP=$(kubectl get nodes --namespace nbontha -o jsonpath="{.items[0].status.addresses[0].address}")
  echo http://$NODE_IP:$NODE_PORT 
  ```

### Remixing and Forking

Make this game your own! Some easy ways to mess around:

- To modify or add more color palettes, change `src/constants/colors.js`.
- To change images, replace images in `src/assets/img/` folder. For example,
  replace the moon at `src/assets/img/moon.png'.
- To change models, replace models in `src/assets/models/` folder. For example,
  replace the arrow blocks at `src/assets/models/arrowblue.obj` or
  `arrowred.obj`.
- To change sounds, replace sounds in `src/assets/sounds`. For example, replace
  the hit sounds at `src/assets/sounds/`.
- Change various values such as `speed` in `src/state/index.js` or
  `BEAT_PRELOAD_TIME` in `src/components/beat-generator.js` to mess with how
  fast you travel along the curve, or how much reaction time until the notes
  arrive to the player.

Other ways such as adding more modes are more involved, but with knowledge of
A-Frame and JavaScript, is doable!

### Test URL Parameters

| URL Parameter                           | Description                                                   |
|-----------------------------------------|---------------------------------------------------------------|
| ?debugcontroller={classic, punch, ride} | Show controllers and move them with shift/ctrl + {h, j, k, l} |
| ?debugbeatpositioning={classic, punch}  | Show all notes in possible positionings.                      |
| ?debugstate={loading, victory}          | Show loading or victory screen.                               |
| ?skipintro=true                         | Skip introduction screen.                                     |

### Deploying to GitHub

Showing off some crazy customizations? Enable GitHub Pages deployment to deploy
`gh-pages` branch, and then:

```
npm run deploy
```

The website will be available on `https://yourusername.github.io/moonrider/`.
# moonrider1
