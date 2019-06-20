<script>
  import Divider from "./Divider.svelte";
  import Logo from "../../static/Logo.svelte";
  import { Link } from "svelte-routing";
</script>

<style>
  .container {
    background-color: #274369;
    position: absolute;
    bottom: 0;
  }
  .footer-container {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 25px 113px;
  }
  .footer-info-left {
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    justify-content: center;
  }
  .footer-info-right {
    display: flex;
    flex-direction: column;
    align-items: flex-end;
    justify-content: center;
  }
  .text-helper {
    color: #fff;
    opacity: 0.5;
    font-size: 14px;
    margin-bottom: 10px;
  }
  .contact-info-wrapper {
    display: flex;
    align-items: center;
  }
  .contact-info {
    display: flex;
    align-items: center;
  }
  .email-text {
    color: #fff;
    font-size: 14px;
    font-weight: bold;
    margin-right: 10px;
  }
  .phone-text {
    color: #fff;
    font-size: 14px;
    margin-right: 48px;
  }
  .link {
    margin-left: 16px;
  }
  .link a {
    text-decoration: none;
    color: #fff;
    font-size: 14px;
  }
  .contact {
    display: flex;
    justify-content: flex-end;
  }
  .logo-icon {
    width: 271px;
    height: 46px;
  }
  .divider {
    padding: 0 113px;
  }
  .copyright {
    margin: 0;
  }
  .link-unset a {
    text-decoration: none;
    color: #fff;
  }
</style>

<div class="container w-100">
  <div class="footer-container">
    <div class="footer-info-left">
      <div class="text-helper">По вопросам сотрудничества:</div>
      <div class="contact-info-wrapper">
        <div class="contact-info">
          <div class="email-text link-unset">
            <a href="mailto:naa@astral.ru">naa@astral.ru</a>
          </div>
          <div class="phone-text link-unset">
            <a href="tel:555-555-5555">+7 (4842) 788 999 доб. 1001</a>
          </div>
        </div>
        <div class="contact-info link-unset">
          <div class="email-text link-unset">
            <a href="mailto:ovsienko_aa@astral.ru">ovsienko_aa@astral.ru</a>
          </div>
          <div class="phone-text link-unset">
            <a href="tel:555-555-5555">+7 (4842) 788 999 доб. 1001</a>
          </div>

        </div>
      </div>
    </div>
    <div class="footer-info-right">
      <div class="text-helper">По вопросам технической поддержки:</div>
      <div class="email-text link-unset">
        <a href="mailto:iproj@astralnalog.ru ">iproj@astralnalog.ru</a>
      </div>
    </div>
  </div>
  <div class="divider">
    <Divider />
  </div>
  <div class="footer-container">
    <div class="logo-icon">
      <Link to=".">
        <Logo />
      </Link>
    </div>
    <div class="contact">
      <div class="text-helper copyright">© 1993-2019, АО «Калуга Астрал»</div>
      <div class="link">
        <a href="https://astral.ru">ASTRAL.RU</a>
      </div>
    </div>
  </div>
</div>
