<script>
  import { onMount } from "svelte";
  export let delay = 1500;
  export let transition = 600;
  export let items = [];
  export let count = 5;
  export let controls = ["previous", "next", "pause", "start"];
  $: cssTransition = `left ${transition / 1000}s`;
  $: width = `${100 / count}%`;
  let itemsElement;
  let transitioning = false;
  let timer = null;
  onMount(() => {
    for (let i = 0; i < items.length; i++) {
      itemsElement.appendChild(items[i]);
      items[i].style.width = width;
    }
    for (let i = 0; i < count; i++) {
      items[i].classList.add("active");
    }
    itemsElement.style.left = "0";
    itemsElement.style.transition = cssTransition;
    start();
  });
  export const next = () => {
    if (transitioning) {
      return;
    }
    transitioning = true;
    const children = itemsElement.children;
    const isAllChilrenActive = count === children.length;
    let foundActive = false;
    let notFoundActive = false;
    let previousElem;
    // Find the first one marked active, then the first one not active.
    for (let i = 0; i < children.length; i++) {
      if (!foundActive && children[i].classList.contains("active")) {
        previousElem = children[i];
        foundActive = true;
        continue;
      }
      if (foundActive && !children[i].classList.contains("active")) {
        children[i].classList.add("active");
        notFoundActive = true;
        break;
      }
    }
    let dupNode;
    if (isAllChilrenActive && !notFoundActive){
      dupNode = previousElem.cloneNode(true);
      itemsElement.insertBefore(dupNode, children[previousElem]);
    }
    itemsElement.style.transition = cssTransition;
    itemsElement.style.left = "-" + width;
    // Wait the transition time, then move the previous element to the end.
    setTimeout(() => {
      !isAllChilrenActive && !notFoundActive && previousElem.classList.remove("active");
      itemsElement.style.transition = "";
      itemsElement.style.left = "0";
      isAllChilrenActive && !notFoundActive && dupNode.remove();
      itemsElement.appendChild(previousElem);
      transitioning = false;
    }, transition);
    // Restart the timer.
    if (timer) {
      start();
    }
  };
  export const previous = () => {
    if (transitioning) {
      return;
    }
    transitioning = true;
    const children = itemsElement.children;
    const isAllChilrenActive = count === children.length;
    let previousElem = children[children.length - 1];
    previousElem.classList.add("active");
    let dupNode = previousElem.cloneNode(true);
    itemsElement.insertBefore(dupNode, children[0]);
    requestAnimationFrame(() => {
      itemsElement.style.transition = "";
      itemsElement.style.left = "-" + width;
      setTimeout(() => {
        itemsElement.style.transition = cssTransition;
        itemsElement.style.left = "0";
      }, 0);
    });
    // Wait the transition time.
    setTimeout(() => {
      previousElem.remove();
      // Find the last one marked active.
      for (let i = children.length - 1; i >= 0; i--) {
        if (children[i].classList.contains("active") && !isAllChilrenActive) {
          children[i].classList.remove("active");
          break;
        }
      }
      itemsElement.style.transition = "";
      transitioning = false;
    }, transition);
    // Restart the timer.
    if (timer) {
      start();
    }
  };
  export const pause = () => {
    clearInterval(timer);
    timer = null;
  };
  export const start = () => {
    if (delay > 0) {
      if (timer) pause();
      timer = setInterval(next, delay);
    }
  };
</script>

<style>
  .multicarousel {
    position: relative;
    overflow: hidden;
    white-space: nowrap;
  }
  .previous,
  .next,
  .pause,
  .start {
    position: absolute;
    cursor: pointer;
    display: flex;
    z-index: 1;
    fill: #fff;
  }
  .previous,
  .next {
    width: 30px;
    align-items: center;
    height: 100%;
  }
  .previous {
    left: 0;
    justify-content: flex-end;
  }
  .next {
    right: 0;
    justify-content: flex-start;
  }
  .pause,
  .start {
    width: 28px;
    left: 50%;
    margin-left: -14px;
    height: 30px;
    bottom: 0;
    justify-content: center;
    align-items: flex-start;
  }
  .items {
    white-space: nowrap;
    position: relative;
  }
  .items > :global(*) {
    display: none;
  }
  .items > :global(*.active) {
    display: inline-block;
  }
</style>

<div class="multicarousel">
  <!-- Icons are provided by http://fontawesome.io/ and https://github.com/encharm/Font-Awesome-SVG-PNG -->
  {#if controls.indexOf('previous') !== -1}
    <div class="previous" on:click={previous}>
      <svg
        width="28"
        height="28"
        viewBox="0 0 1792 1792"
        xmlns="http://www.w3.org/2000/svg">
        <defs>
          <filter id="shadow" x="0" y="0" width="200%" height="200%">
            <feOffset result="offOut" in="SourceAlpha" dx="0" dy="0" />
            <feGaussianBlur result="blurOut" in="offOut" stdDeviation="10" />
            <feBlend in="SourceGraphic" in2="blurOut" mode="normal" />
          </filter>
        </defs>
        <path
          filter="url(#shadow)"
          d="M1427 301l-531 531 531 531q19 19 19 45t-19 45l-166 166q-19 19-45
          19t-45-19l-742-742q-19-19-19-45t19-45l742-742q19-19 45-19t45 19l166
          166q19 19 19 45t-19 45z" />
      </svg>
    </div>
  {/if}
  {#if controls.indexOf('next') !== -1}
    <div class="next" on:click={next}>
      <svg
        width="28"
        height="28"
        viewBox="0 0 1792 1792"
        xmlns="http://www.w3.org/2000/svg">
        <defs>
          <filter id="shadow" x="0" y="0" width="200%" height="200%">
            <feOffset result="offOut" in="SourceAlpha" dx="0" dy="0" />
            <feGaussianBlur result="blurOut" in="offOut" stdDeviation="10" />
            <feBlend in="SourceGraphic" in2="blurOut" mode="normal" />
          </filter>
        </defs>
        <path
          filter="url(#shadow)"
          d="M1363 877l-742 742q-19 19-45
          19t-45-19l-166-166q-19-19-19-45t19-45l531-531-531-531q-19-19-19-45t19-45l166-166q19-19
          45-19t45 19l742 742q19 19 19 45t-19 45z" />
      </svg>
    </div>
  {/if}
  {#if timer && controls.indexOf('pause') !== -1}
    <div class="pause" on:click={pause}>
      <svg
        width="28"
        height="28"
        viewBox="0 0 1792 1792"
        xmlns="http://www.w3.org/2000/svg">
        <defs>
          <filter id="shadow" x="0" y="0" width="200%" height="200%">
            <feOffset result="offOut" in="SourceAlpha" dx="0" dy="0" />
            <feGaussianBlur result="blurOut" in="offOut" stdDeviation="10" />
            <feBlend in="SourceGraphic" in2="blurOut" mode="normal" />
          </filter>
        </defs>
        <path
          filter="url(#shadow)"
          transform="translate(179.2 179.2) scale(0.8)"
          d="M1664 192v1408q0 26-19 45t-45 19h-512q-26 0-45-19t-19-45v-1408q0-26
          19-45t45-19h512q26 0 45 19t19 45zm-896 0v1408q0 26-19 45t-45
          19h-512q-26 0-45-19t-19-45v-1408q0-26 19-45t45-19h512q26 0 45 19t19
          45z" />
      </svg>
    </div>
  {/if}
  {#if !timer && controls.indexOf('start') !== -1}
    <div class="start" on:click={start}>
      <svg
        width="28"
        height="28"
        viewBox="0 0 1792 1792"
        xmlns="http://www.w3.org/2000/svg">
        <defs>
          <filter id="shadow" x="0" y="0" width="200%" height="200%">
            <feOffset result="offOut" in="SourceAlpha" dx="0" dy="0" />
            <feGaussianBlur result="blurOut" in="offOut" stdDeviation="10" />
            <feBlend in="SourceGraphic" in2="blurOut" mode="normal" />
          </filter>
        </defs>
        <path
          filter="url(#shadow)"
          transform="translate(179.2 179.2) scale(0.8)"
          d="M1576 927l-1328 738q-23 13-39.5 3t-16.5-36v-1472q0-26 16.5-36t39.5
          3l1328 738q23 13 23 31t-23 31z" />
      </svg>
    </div>
  {/if}
  <div class="items" bind:this={itemsElement} />
</div>
