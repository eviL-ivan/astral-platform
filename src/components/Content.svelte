<script>
  import Integration from "./Main/Integration.svelte";
  import Button from "./Button.svelte";
  import ServiceInfoIcon1 from "../../static/ServiceInfo/ServiceInfoIcon1.svelte";
  import Divider from "./Divider.svelte";
  import Tabs from "./Tabs.svelte";
</script>

<style>
  .container-info-icon {
    display: flex;
    justify-content: flex-start;
    align-items: center;
  }
  .content-icon {
    margin-right: 45px;
  }
  .content-info-text {
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    justify-content: center;
  }
  .content-title {
    color: #2e3e56;
    font-weight: 500;
    font-size: 44px;
  }
  .content-buttons-wrapper{
    display: flex;
    justify-content: space-around;
    align-items: center;
  }
</style>

<div class="max-width">
  <div class="container-info-icon">
    <div class="content-icon">
      <ServiceInfoIcon1 />
    </div>
      <div class="content-info-text">
        <div class="content-title">Передача отчетности</div>
        <div class="content-buttons-wrapper">
          <Tabs />
          <Button>Все сервисы</Button>
        </div>
      </div>
  </div>
  <Divider />
  <Integration />
</div>
