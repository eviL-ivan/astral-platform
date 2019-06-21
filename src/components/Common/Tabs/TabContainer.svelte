<script>
  import FilePlaceholder from "components/Common/FilePlaceholder.svelte";
  import PlaceholderImage from "static/PlaceholderImage.svelte";

  let placeholderTitle = "Контента нет";
  let placeholderText =
    "Пока нет контента, но скоро он обязательно появится :)";
  let info = `Таким образом реализация намеченных плановых заданий позволяет выполнять
        важные задания по разработке новых предложений. Таким образом постоянный
        количественный рост и сфера нашей активности требуют от нас анализа
        дальнейших направлений развития. Разнообразный и богатый опыт
        сложившаяся структура организации играет важную роль в формировании
        систем массового участия. Равным образом рамки и место обучения кадров
        представляет собой интересный эксперимент проверки направлений
        прогрессивного развития. Идейные соображения высшего порядка, а также
        постоянный количественный рост и сфера нашей активности позволяет
        выполнять важные задания по разработке системы обучения кадров,
        соответствует насущным потребностям. Равным образом сложившаяся
        структура организации позволяет оценить значение соответствующий условий
        активизации. С другой стороны начало повседневной работы по формированию
        позиции требуют определения и уточнения соответствующий условий
        активизации. Разнообразный и богатый опыт консультация с широким активом
        в значительной степени обуславливает создание систем массового участия.
        Равным образом постоянный количественный рост и сфера нашей активности
        влечет за собой процесс внедрения и модернизации направлений
        прогрессивного развития.`;
</script>

<style>
  .tab_wrapper {
    margin: 80px;
    display: flex;
    flex-direction: column;
    background: white;
    overflow: hidden;
  }
  .tab_wrapper main {
    flex: 1;
    width: 200%;
    height: 100%;
  }
  .tab_wrapper main .tab_reel {
    width: 100%;
    display: flex;
    justify-content: space-between;
    transition: 0.5s cubic-bezier(0.16, 1, 0.29, 0.99);
  }
  .tab_wrapper main .tab_reel .tab_panel1,
  .tab_wrapper main .tab_reel .tab_panel2 {
    width: 50%;
  }
</style>

<div class="tab_wrapper">
  <main>
    <div class="tab_reel" id="reel">
      <div class="tab_panel1">{info}</div>
      <div class="tab_panel2">
        <FilePlaceholder
          {placeholderTitle}
          {placeholderText}
          {PlaceholderImage} />
      </div>
    </div>
  </main>
</div>
