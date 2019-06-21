<style>
  .container {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: flex-start;
  }
  .contact-title {
    font-size: 44px;
    font-weight: 500;
    margin: 60px 0;
  }
  .contact-container {
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
  }
  .left-contact {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: flex-start;
  }
  .contact-header {
    font-size: 14px;
    opacity: 0.5;
  }
  .contact-card {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: flex-start;
    padding: 40px 0;
  }
  .contact-name {
    font-size: 18px;
    font-weight: bold;
  }
  .contact-name a {
    color: #2e3e56;
  }
  .contact-email {
    font-size: 18px;
  }
  .contact-email a {
    color: #2e3e56;
  }
  .contact-phone {
    font-size: 14px;
  }
  .contact-phone a {
    color: #2e3e56;
  }
  .right-contact {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: flex-start;
  }
</style>

<div class="container max-width">
  <div class="contact-title">Контакты</div>
  <div class="contact-container w-100">
    <div class="left-contact">
      <div class="contact-header">По вопросам сотрудничества:</div>
      <div class="contact-card">
        <div class="contact-name">Новосельцев Александр</div>
        <div class="contact-email">
          <a href="mailto:naa@astral.ru">naa@astral.ru</a>
        </div>
        <div class="contact-phone">
          <a href="tel:+74842788999">+7 (4842) 788-999 доб. 1001</a>
        </div>
      </div>
      <div class="contact-card">
        <div class="contact-name">Овсиенко Анна</div>
        <div class="contact-email">
          <a href="ovsienko_aa@astral.ru">ovsienko_aa@astral.ru</a>
        </div>
        <div class="contact-phone">
          <a href="tel:+74842788999">+7 (4842) 788-999 доб. 1001</a>
        </div>
      </div>
    </div>
    <div class="right-contact">
      <div class="contact-header">По вопросам технической поддержки:</div>
      <div class="contact-card">
        <div class="contact-name">
          <a href="iproj@astralnalog.ru">iproj@astralnalog.ru</a>
        </div>
      </div>
    </div>
  </div>
</div>
