import React, { Component } from "react"

import account from "../../images/account.png"

const Account = () => {

  function openModal() {
    try {
      window.netlifyIdentity.open()
    } catch (e) {
      console.log(e);
    }
  }

  function isLogged() {
    try {
      return window.netlifyIdentity.currentUser() !== null;
    } catch (e) {
      return false;
    }
  }

  function renderAccountIcon() {
    if (isLogged()) {
      return <div>Connecte</div>
    } else {
      return <div><img className={"account"} src={account} alt="" onClick={openModal}/></div>
    }
  }

  return (
    <div>
      {renderAccountIcon()}
    </div>
  )
}

export default Account
