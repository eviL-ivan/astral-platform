<script>
  import AboutIcon from "../../static/AboutIcon.svelte";
</script>

<style>
  .container {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    padding: 100px 0;
  }
  .top-info {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 96px;
  }
  .left-top-info{
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    width: 100%;
  }
  .about-icon{
    width: 186px;
    height: 149px;
    margin-bottom: 50px;
  }
  .left-info{
    text-align: center;
    font-size: 16px;
  }
  .right-top-info{
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    justify-content: center;
    margin-left: 103px;
  }
  .right-title{
    font-size: 44px;
    font-weight: 500;
  }
  .right-info{
    font-size: 18px;
  }
  .bottom-container{
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 22px;
    background: #0056d6 url("/AboutBackground.svg") center no-repeat;
  }
  .bottom-info{
    color: #fff;
    font-size: 24px;
    font-weight: 300;
    padding: 72px 104px;
  }
</style>

<div class="container max-width">
  <div class="top-info">
    <div class="left-top-info">
      <div class="about-icon">
        <AboutIcon />
      </div>
      <div class="left-info">
        Более подробную информацию о нас и наших продуктах вы найдете на нашем
        сайте: astral.ru
      </div>
    </div>
    <div class="right-top-info">
      <div class="right-title">О нас</div>
      <div class="right-info">
        Группа компаний «Астрал» ведет свою деятельность с 1993 года, поставляя
        на рынок информационных технологий современное, высокотехнологичное
        программное обеспечение, получившее широкое распространение среди
        организаций всех сфер деятельности. Основное направление работы наших
        специалистов — это разработка и внедрение систем для сдачи электронной
        отчетности. Число пользователей программных продуктов, созданных АО
        "Калуга Астрал", неуклонно растет день за днем.
      </div>
    </div>
  </div>
  <div class="bottom-container">
    <div class="bottom-info">
      Удостоверяющий Центр АО «Калуга Астрал» является вторым в России по
      количеству обслуживаемых сертификатов электронной подписи, а спецоператор
      связи Астрал.ОФД – в тройке ведущих в РФ.
    </div>
  </div>
</div>
