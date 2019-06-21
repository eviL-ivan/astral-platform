<script>
  import Integration from "./Main/Integration.svelte";
  import List from "./List/List.svelte";
  import ServiceButton from "./ServiceButton.svelte";
  import Popover from "./Popover.svelte";
  import DotsIcon from "../../static/DotsIcon.svelte";
  import ServiceInfoIcon1 from "../../static/ServiceInfo/ServiceInfoIcon1.svelte";
  import Divider from "./Divider.svelte";
  import Tabs from "./Tabs.svelte";
  import TabContainer from "./TabContainer.svelte";
</script>

<style>
  .content-container {
    padding-top: 42px;
  }
  .container-info-icon {
    display: flex;
    justify-content: flex-start;
    align-items: flex-end;
  }
  .content-icon {
    margin-right: 45px;
  }
  .content-info-text {
    width: 100%;
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
  .content-buttons-wrapper {
    width: 100%;
    display: flex;
    justify-content: space-between;
    align-items: flex-end;
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

<div class="max-width content-container">
  <div class="container-info-icon">
    <div class="content-icon">
      <ServiceInfoIcon1 />
    </div>
    <div class="content-info-text">
      <div class="content-title">Передача отчетности</div>
      <div class="content-buttons-wrapper">
        <Tabs />
        <Popover>
          <div slot="button">
            <ServiceButton>
              <div class="button-container">
                <div class="button-icon">
                  <DotsIcon />
                </div>
                <div>Все сервисы</div>
              </div>
            </ServiceButton>
          </div>
          <div slot="content"><List /></div>
        </Popover>
      </div>
    </div>
  </div>
  <Divider />
  <TabContainer />
  <Divider />
  <Integration />
</div>
