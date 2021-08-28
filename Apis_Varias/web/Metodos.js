var firebaseConfig = {
    apiKey: "AIzaSyDkJdyh2ZPJnNXq1_nxQ178PXpHsisKr2Q",
    authDomain: "apis-c62e2.firebaseapp.com",
    databaseURL: "https://apis-c62e2.firebaseio.com",
    projectId: "apis-c62e2",
    storageBucket: "apis-c62e2.appspot.com"
};
firebase.initializeApp(firebaseConfig);
function iniciarMicrosoft()
{
    var provider = new firebase.auth.OAuthProvider('microsoft.com');
    firebase.auth().signInWithPopup(provider)
            .then((result) => {
                var credential = result.credential;
                var accessToken = credential.accessToken;
                var idToken = credential.idToken;
                window.location="/apiphp/index.jsp";
            })
            .catch((error) => {
                console.log(error.message);
            });
}
function iniciaryahoo()
{
    var provider = new firebase.auth.OAuthProvider('yahoo.com');
    firebase.auth().signInWithPopup(provider)
            .then((result) => {
                const credential = result.credential;
                var accessToken = credential.accessToken;
                var idToken = credential.idToken;
                window.location="/apiphp/index.jsp";
            })
            .catch((error) => {
                console.log("asd");
            });
}
function iniciarGoogle()
{
    var provider = new firebase.auth.GoogleAuthProvider();
    firebase.auth()
            .signInWithPopup(provider)
            .then((result) => {
                var credential = result.credential;
                var token = credential.accessToken;
                var user = result.user;
                window.location="/apiphp/index.jsp";
                
            }).catch((error) => {
        var errorCode = error.code;
        var errorMessage = error.message;
        var email = error.email;
        var credential = error.credential;
    });
}
function loginWithGithub() {
    firebase.auth().setPersistence(firebase.auth.Auth.Persistence.LOCAL)
            .then((resul) => {
                var provider = new firebase.auth.GithubAuthProvider();
                ocultar();
                return  firebase.auth().signInWithPopup(provider);
            })
            .catch((error) => {
                var errorCode = error.code;
                var errorMessage = error.message;
            });
    firebase.auth().onAuthStateChanged((usera) => {
    });

}
var loginWithFacebook = function () {
    var provider = new firebase.auth.FacebookAuthProvider();
    firebase.auth().signInWithPopup(provider).then(function (result) {
        var token = result.credential.accessToken;
        var user = result.user;
        window.location="/apiphp/index.jsp";

    }).catch(function (error) {
        var errorCode = error.code;
        var errorMessage = error.message;
        var email = error.email;
        var credential = error.credential;
        console.log(errorMessage);
    });
};


