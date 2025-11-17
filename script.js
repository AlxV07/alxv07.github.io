function yearsSince(birthdate) {
    const currentDate = new Date();
    let age = currentDate.getFullYear() - birthdate.getFullYear();
    if (currentDate.getMonth() < birthdate.getMonth() ||
        (currentDate.getMonth() === birthdate.getMonth() && currentDate.getDate() < birthdate.getDate())) {
        age--;
    }
    return age;
}

document.addEventListener('DOMContentLoaded', () => {
    document.querySelector('[class~=pfp]').style.opacity = 1;
    document.getElementById('age-code-block').textContent = yearsSince(new Date('2008-12-06')).toString();
    document.getElementById('prog-age-code-block').textContent = yearsSince(new Date('2020-12-06')).toString();
});
