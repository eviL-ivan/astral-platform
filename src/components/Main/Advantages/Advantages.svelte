<script>
  import AdvantagesCard from "./AdvantagesCard.svelte";
  import { image1, image2, image3, image4 } from "static/AdvantagesIcon";
  //mock
  let advantagesData = [
    {
      Icon: image1,
      text: "Различные сервисы для ведения бизнеса на одном ресурсе"
    },
    {
      Icon: image2,
      text: "Работа с одной облачной подписью в разных сервисах"
    },
    {
      Icon: image3,
      text:
        "Анализ бизнес-процессов Заказчика и подбор оптимального варианта интеграции"
    },
    {
      Icon: image4,
      text:
        "Бесплатное предоставление API и оказание консультация по встраиванию"
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
  .advantage-header {
    text-align: center;
    font-weight: 300;
    font-size: 28px;
    margin-bottom: 20px;
  }
</style>

<div class="max-width">
  <div class="advantage-header">Преимущества платформы</div>
  <div class="wrapper-cards">
    {#each advantagesData as { ...data }, i}
      <AdvantagesCard {...data} />
    {/each}
  </div>
</div>
