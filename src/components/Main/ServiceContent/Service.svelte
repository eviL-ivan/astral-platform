<script>
  import ServiceCard from "./ServiceCard.svelte";
  import Divider from "components/Common/Divider.svelte";
  import WhiteButton from "components/Common/Buttons/WhiteButton.svelte";

  import ArrowUp from "static/ArrowIcon/ArrowUp.svelte";
  import ArrowDown from "static/ArrowIcon/ArrowDown.svelte";
  import {
    ServiceIcon1,
    ServiceIcon2,
    ServiceIcon3,
    ServiceIcon4,
    ServiceIcon5
  } from "static/ServiceIcon";

  let isShowAllService = false;
  const showAllService = () => {
    isShowAllService = !isShowAllService;
  };
  //mock
  let mainService = [
    {
      Icon: ServiceIcon1,
      text: "Передача отчетности"
    },
    {
      Icon: ServiceIcon2,
      text: "ЭДО с контрагентами"
    },
    {
      Icon: ServiceIcon3,
      text: "Подписание документов КЭП"
    },
    {
      Icon: ServiceIcon4,
      text: "Получение выписок из ЕГРЮЛ/ЕГРИП"
    },
    {
      Icon: ServiceIcon5,
      text: "Регистрация бизнеса"
    }
  ];
  let otherService = [
    {
      Icon: ServiceIcon5,
      text: "Регистрация бизнеса"
    },
    {
      Icon: ServiceIcon3,
      text: "Подписание документов КЭП"
    },
    {
      Icon: ServiceIcon2,
      text: "ЭДО с контрагентами"
    },
    {
      Icon: ServiceIcon1,
      text: "Передача отчетности"
    },
    {
      Icon: ServiceIcon4,
      text: "Получение выписок из ЕГРЮЛ/ЕГРИП"
    }
  ];
</script>

<style>
  .wrapper-cards {
    display: flex;
    justify-content: space-around;
    margin: 24px 0;
    flex-wrap: wrap;
  }
  .container-service {
    padding: 40px 0;
  }
  .button-container {
    display: flex;
    justify-content: center;
    align-items: center;
  }
  .button-icon {
    width: 24px;
    height: 24px;
    margin-right: 8px;
  }
</style>

<div class="container-service max-width">
  <div class="wrapper-cards">
    {#each mainService as { ...data }, i}
      <ServiceCard {...data} />
    {/each}
    {#if isShowAllService}
      {#each otherService as { ...data }, i}
        <ServiceCard {...data} />
      {/each}
    {/if}
  </div>
</div>
<WhiteButton onClick={showAllService}>
  <div class="button-container">
    <div class="button-icon">
      {#if !isShowAllService}
        <ArrowDown />
      {:else}
        <ArrowUp />
      {/if}
    </div>
    <div>Все сервисы</div>
  </div>
</WhiteButton>
