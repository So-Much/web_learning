// Css power up
// push height for element
if(document.querySelector('.sign-up-img-form')){
    const ipForm = document.querySelector('.input-form-sign-up')
    let heightForm = ipForm.offsetHeight + 'px'
    const background = document.querySelector('.sign-up-img-form')
    window.onload = e => {
        background.style.heigh = heightForm
    }
}
// Javsscript start
const root = document.querySelector(':root')
const submitbtnSignUp= document.querySelector('.submit-sign-up-js')


// Function handle common

// email regular expressions
const validateEmail = (email) => {
    return String(email)
    .toLowerCase()
    .match(
        /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
    );
};
// end email regular expressions

//validated login form
if(document.querySelector('.Login-form')){
    const account = document.querySelector('.account')
    const pass = document.querySelector('.password')
    const accData = document.querySelector('.container-form input[type=text]');
    const passData = document.querySelector('.container-form input[type=password]');
    const accountErr = document.querySelector('.account-error')
    const passErr = document.querySelector('.pass-error')
    const layoutLogin = document.querySelector('.Login-form .input-form')
    const submitbtn = document.querySelector('.submit')
    let heightValueBefore = "435px"


    submitbtn.onclick = (e) => {
        let marginValueAfter = "8px 5px"
        let heightValueAfter = "475px"
    
        // handle null data account
        if(!accData.value){
            e.preventDefault();
            accountErr.innerHTML = `Account is not None`
            account.style = `max-height: var(--heightInput);margin: ${marginValueAfter};`
            root.style.setProperty('--heightForm', heightValueAfter)
        }
        // handle null data password
        if(!passData.value){
            e.preventDefault();
            passErr.innerHTML = `Pass is not None`
            pass.style = `max-height: var(--heightInput);margin: ${marginValueAfter};`
            root.style.setProperty('--heightForm', heightValueAfter)
        }else{
            // pass less than 6 character
            if(passData.value.length < 6){
                e.preventDefault();
                passErr.innerHTML = `Pass is less than 6 character`
                pass.style = `max-height: var(--heightInput);margin: ${marginValueAfter};`
                root.style.setProperty('--heightForm', heightValueAfter)
            }
        }
    }

    // reset error
    accData.oninput = e => {
        accountErr.innerHTML = ``
        account.style = `max-height: var(--heightInput);margin: 15px 5px;`
        root.style.setProperty('--heightForm', heightValueBefore)
    }

    passData.oninput = e => {
        passErr.innerHTML = ``
        pass.style = `max-height: var(--heightInput);margin: 15px 5px;`
        root.style.setProperty('--heightForm', heightValueBefore)
    }
}
// end validate login form

// validated sign up form
if(document.querySelector('.sign-up-form')){
    const submitbtnSignUp = document.querySelector('.submit-sign-up-js')
    const fullnameData = document.querySelector('.full-name-input')
    const emailData = document.querySelector('.email-input')
    const passSignUpData = document.querySelector('.pass-sign-up-input')
    const confirmPassData = document.querySelector('.confirm-pass-input')
    
    const fullnameErr = document.querySelector('.full-name-err')
    const emailErr = document.querySelector('.mail-err')
    const passSignUpErr = document.querySelector('.pass-sign-up-err')
    const confirmPassErr = document.querySelector('.confirm-pass-err')

    const fullname = document.querySelector('.full-name')
    const email = document.querySelector('.email')
    const password = document.querySelector('.password')
    const confirmPass = document.querySelector('.confirm-pass')

    submitbtnSignUp.onclick = e => {
        // None error
        let marginErr = "15px 5px 5px"
        if(!fullnameData.value){
            e.preventDefault()
            fullnameErr.innerHTML = `Full name is not None`
            fullname.style.margin = marginErr
        }
        if(!emailData.value){
            e.preventDefault()
            emailErr.innerHTML = `Email is not None`
            email.style.margin = marginErr
        }else{
            // validate email
            if(!validateEmail(emailData.value)){
                e.preventDefault()
                emailErr.innerHTML = `This field must be email`
                email.style.margin = marginErr
            }
        }
        if(!passSignUpData.value){
            e.preventDefault()
            passSignUpErr.innerHTML = `Pass is not None`
            password.style.margin = marginErr
        }else{
            // pass less than 6 character
            if(passSignUpData.value.length < 6){
                e.preventDefault();
                passSignUpErr.innerHTML = `Pass is less than 6 character`
                password.style.margin = marginErr
            }
        }
        if(!confirmPassData.value){
            e.preventDefault()
            confirmPassErr.innerHTML = `Confirm Pass is not None`
            confirmPass.style.margin = marginErr
        }else{
            // confirm is not correct
            if(passSignUpData.value != confirmPassData.value){
                e.preventDefault()
                confirmPassErr.innerHTML = `Pass is not Same`
                confirmPass.style.margin = marginErr
            }
        }
    }
    fullnameData.oninput = e => {
        fullnameErr.innerHTML = ``
    }
    emailData.oninput = e => {
        emailErr.innerHTML = ``
    }
    passSignUpData.oninput = e => {
        passSignUpErr.innerHTML = ``
    }
    confirmPassData.oninput = e => {
        confirmPassErr.innerHTML = ``
    }
}