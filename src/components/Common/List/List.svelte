<script>
  import ListItem from "./ListItem.svelte";
  import {
    ServiceIconSmall1,
    ServiceIconSmall2,
    ServiceIconSmall3,
    ServiceIconSmall4,
    ServiceIconSmall5
  } from "static/ServiceIcon";
  //mock data
  let service = [
    {
      Icon: ServiceIconSmall1,
      text: "Передача отчетности"
    },
    {
      Icon: ServiceIconSmall2,
      text: "ЭДО с контрагентами"
    },
    {
      Icon: ServiceIconSmall3,
      text: "Подписание документов КЭП"
    },
    {
      Icon: ServiceIconSmall4,
      text: "Получение выписок из ЕГРЮЛ/ЕГРИП"
    },
    {
      Icon: ServiceIconSmall5,
      text: "Регистрация бизнеса"
    }
  ];
</script>

<style>
  .list {
    width: 100%;
    max-width: 360px;
    padding: 16px 0;
  }
</style>

<div class="list">
  {#each service as { ...data }, i}
    <ListItem {...data} />
  {/each}
</div>
