***Settings***
Resource        base.robot 

Test Setup          Nova sessão
Test Teardown       Encerra sessão

***Variables***
${check_thor}        id:thor
${check_ironman}     CSS:input[value='iron-man']
${check_panter}      Xpath://*[@id='checkboxes']/input[7]


***Test Cases***
Marcando opção com ID
   
    Go To                            ${url}/checkboxes
    Select Checkbox                  ${check_thor}
    Checkbox Should Be Selected      ${check_thor}
    

Marcando opção com CSS Selector
    
    Go To                             ${url}/checkboxes
    Select Checkbox                   ${check_ironman}
    Checkbox Should Be Selected       ${check_ironman}
    

Marcando opção com Xpath

    [Tags]      ironman
    Go To                             ${url}/checkboxes
    Select Checkbox                   ${check_panter}
    Checkbox Should Be Selected       ${check_panter}
    

  