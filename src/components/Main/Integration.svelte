<script>
  import Button from "../Button.svelte";
  let FIO = "",
    organization = "",
    email = "",
    phone = "",
    inn = "",
    kpp = "";
  const submit = () => {
    console.log(
      "FIO",
      FIO,
      "organization",
      organization,
      "email",
      email,
      "phone",
      phone,
      "inn",
      inn,
      "kpp",
      kpp
    );
  };
</script>

<style>
  .advantage-header {
    text-align: center;
    font-weight: 300;
    font-size: 28px;
    margin-bottom: 20px;
  }
  .form-wrapper {
    display: flex;
    flex-direction: column;
    align-items: center;
    margin-top: 50px;
    margin-bottom: 70px;
  }
  .inputs {
    display: flex;
    justify-content: flex-start;
    align-items: center;
  }
  .input {
    background: #ffffff;
    border: 1px solid #bec3c9;
    box-sizing: border-box;
    box-shadow: 0 0 0 0 transparent;
    border-radius: 6px;
    height: 50px;
    outline:none;
    transition: box-shadow .2s, border .2s;
    padding: 14px 20px;
  }
  .input:focus {
    box-shadow: 0 0 0 1px #0056D6;
    border-color: #0056D6;
  }
  .fio-input {
    width: 596px;
    margin-right: 22px;
    margin-bottom: 20px;
  }
  .organization-input {
    width: 392px;
    margin-bottom: 20px;
  }
  .regular-input {
    width: 287px;
    margin: 0 22px 0 0;
  }
  .small-input {
    width: 181px;
    margin: 0;
  }
  .minus {
    font-size: 18px;
    font-weight: 800;
    margin: 0 8px;
  }
  .link:hover {
    cursor: pointer;
    color: #2196f3;
    text-decoration: none;
  }
</style>

<div class="max-width">
  <div class="advantage-header">Заявка на интеграцию</div>
  <div class="form-wrapper">
    <div class="inputs">
      <input
        bind:value={FIO}
        class="fio-input input"
        placeholder="Фамилия Имя Отчество" />
      <input
        bind:value={organization}
        class="organization-input input"
        placeholder="Организация" />
    </div>
    <div class="inputs">
      <input
        bind:value={email}
        class="regular-input input"
        placeholder="Email" />
      <input bind:value={phone} class="regular-input input" placeholder="+7" />
      <input bind:value={inn} class="small-input input" placeholder="ИНН" />
      <div class="minus">&mdash;</div>
      <input bind:value={kpp} class="small-input input" placeholder="КПП" />
    </div>
    <div>
      <Button onClick={submit}>Отправить заявку</Button>
    </div>
    <div class="personal-data">
      Отправляя заявку Вы соглашаетесь на
      <a class="link" href="https://astral.ru/soglashenie-na-obrabotku-personalnykh-dannykh/">обработку персональных данных</a>
    </div>
  </div>
</div>
