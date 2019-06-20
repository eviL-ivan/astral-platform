<script>
  import { Router, Link, Route } from "svelte-routing";
  import NewItem from "./Header/NewsItem.svelte";
  import LogoColored from "../../static/LogoColored.svelte";
  import AstralPlatform from "../../static/AstralPlatform.svelte";
  import LoginWhiteHeader from "../../static/LoginWhiteHeader.svelte";
  export let getProps;
</script>

<style>
  header {
    position: relative;
    margin-bottom: 50px;
    background: #0056d6 url("/BackgroundHeader.svg") center repeat;
  }
  .container-white {
    height: 98px;
    background-color: white;
    color: black;
  }
  .sub-header > div {
    margin-bottom: 40px;
  }
  .logo {
    margin: 24px 43px;
  }
  .row {
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  .header-left {
    display: flex;
    align-items: center;
  }
  .header-right {
    display: flex;
    align-items: center;
    margin: 0 110px;
    padding-top: 11px;
  }
  nav {
    margin-top: 10px;
  }
  nav > :global(a) {
    text-decoration: none;
    color: #2e3e56;
    margin: 15px 32px 0;
    font-size: 20px;
    cursor: pointer;
    opacity: 0.7;
  }
  nav > :global(a:hover) {
    opacity: 1;
  }
  .wrapper-lk {
    display: flex;
    align-items: center;
    text-decoration: none;
  }
  .text-lk {
    font-size: 16px;
    color: #2e3e56;
    opacity: 0.5;
    margin-right: 6px;
  }
  .link-lk {
    text-decoration: none;
    color: #2e3e56;
    font-size: 16px;
    cursor: pointer;
  }
  .icon-lk {
    width: 32px;
    height: 32px;
    margin-left: 8px;
  }
  :global(.active) {
    border-bottom: 2px solid #0056d6;
    opacity: 1 !important;
  }
</style>

<div class="h-100 w-100">
  <div class="container-white w-100">
    <div class="row">
      <div class="header-left">
        <div class="logo">
          <Link to="." {getProps}>
            <LogoColored />
          </Link>
        </div>
        <nav>
          <Link to="about" {getProps}>О нас</Link>
          <Link to="contact" {getProps}>Контакты</Link>
          <Link to="news" {getProps}>Новости</Link>
        </nav>
      </div>
      <div class="header-right">
        <a class="wrapper-lk" href="">
          <div class="text-lk">Войти в</div>
          <div class="link-lk">Личный кабинет</div>
          <div class="icon-lk">
            <LoginWhiteHeader />
          </div>
        </a>
      </div>
    </div>
  </div>
</div>
