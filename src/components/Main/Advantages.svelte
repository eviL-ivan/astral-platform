<script>
  import AdvantagesCard from "./AdvantagesCard.svelte";
  import {
    ServiceIcon1,
    ServiceIcon2,
    ServiceIcon3,
    ServiceIcon4
  } from "../../../static/ServiceIcon";
  let advantagesData = [
    {
      Icon: ServiceIcon1,
      text: "Различные сервисы для ведения бизнеса на одном ресурсе"
    },
    {
      Icon: ServiceIcon2,
      text: "Работа с одной облачной подписью в разных сервисах"
    },
    {
      Icon: ServiceIcon3,
      text:
        "Анализ бизнес-процессов Заказчика и подбор оптимального варианта интеграции"
    },
    {
      Icon: ServiceIcon4,
      text:
        "Бесплатное предоставление API и оказание консультация по встраиванию"
    }
  ];
</script>

<style>
  .wrapper-cards {
    display: flex;
    justify-content: space-around;
    margin: 24px 112px;
    flex-wrap: wrap;
  }
  .advantage-header {
    text-align: center;
    font-weight: 300;
    font-size: 28px;
    margin-bottom: 20px;
  }
</style>

<div>
  <div class="advantage-header">Преимущества платформы</div>
  <div class="wrapper-cards">
    {#each advantagesData as { ...data }, i}
      <AdvantagesCard {...data} />
    {/each}
  </div>
</div>
