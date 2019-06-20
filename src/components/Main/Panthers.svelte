<script>
  import PantherCard from "./PantherCard.svelte";
  import { onMount } from "svelte";
  import MultiCarousel from "../MultiCarousel.svelte";
  import {
    Action,
    MoeDelo,
    Promsvyazbank,
    Tincoff
  } from "../../../static/PanthersIcon";
  import ArrowLeft from "../../../static/ArrowLeft.svelte";
  import ArrowRight from "../../../static/ArrowRight.svelte";
  let pantherData = [
    {
      Icon: Action
    },
    {
      Icon: MoeDelo
    },
    {
      Icon: Promsvyazbank
    },
    {
      Icon: Tincoff
    }
  ];
  let carousel;
  onMount(() => {
    const container = document.getElementById("MyCarousel");
    carousel = new MultiCarousel({
      target: container,
      props: {
        delay: 3000,
        transition: 600, // Duration of slide transition.
        items: [...container.children],
        count: 4,
        controls: []
      }
    });
  });
  const slideToLeft = () => {
    carousel && carousel.previous();
  };
  const slideToRight = () => {
    carousel && carousel.next();
  };
</script>

<style>
  .panther-wrapper {
    background-color: #f2f4f7;
    margin: 24px 0;
  }
  .wrapper-cards {
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 60px;
  }
  .panthers-header {
    text-align: center;
    font-weight: 300;
    font-size: 28px;
    padding-top: 20px;
  }
  .arrow-icon {
    cursor: pointer;
  }
  #MyCarousel {
    width: 75%;
  }
  :global(.multicarousel) {
    position: relative;
    overflow: hidden;
    white-space: nowrap;
  }
  :global(.multicarousel .items) {
    position: relative;
    white-space: nowrap;
  }
  :global(.multicarousel .items > div) {
    display: none;
  }
  :global(.multicarousel .items > div.active) {
    display: inline-block;
    border: none;
    opacity: 1;
  }
</style>

<div class="panther-wrapper w-100">
  <div class="panthers-header">Партнеры</div>
  <div class="wrapper-cards">
    <div class="arrow-icon" on:click={slideToLeft}>
      <ArrowLeft />
    </div>
    <div id="MyCarousel">
      {#each pantherData as { ...data }, i}
        <PantherCard {...data} />
      {/each}
    </div>
    <div class="arrow-icon" on:click={slideToRight}>
      <ArrowRight />
    </div>
  </div>
</div>
