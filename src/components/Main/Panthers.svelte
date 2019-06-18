<script>
  import PantherCard from "./PantherCard.svelte";
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
</script>

<style>
  .panther-wrapper {
    background-color: #f2f4f7;
  }
  .wrapper-cards {
    display: flex;
    justify-content: center;
    align-items: center;
  }
  .panthers-header {
    text-align: center;
    font-weight: 300;
    font-size: 28px;
    margin-bottom: 20px;
  }
  .arrow-icon {
    cursor: pointer;
  }
</style>

<div class="panther-wrapper">
  <div class="panthers-header">Партнеры</div>
  <div class="wrapper-cards">
    <div class="arrow-icon">
      <ArrowLeft />
    </div>
    {#each pantherData as { ...data }, i}
      <PantherCard {...data} />
    {/each}
    <div class="arrow-icon">
      <ArrowRight />
    </div>
  </div>
</div>
