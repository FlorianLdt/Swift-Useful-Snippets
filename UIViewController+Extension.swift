extension UIViewController {
    func showSimpleAlert(title: String?, message: String) {
        let okAction = UIAlertAction(title: "Ok", style: .default)
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(okAction)
        self.present(alert, animated: true)
    }
}