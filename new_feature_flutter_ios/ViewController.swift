import UIKit
import Flutter

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .systemBackground
        
        let titleLabel = UILabel()
        titleLabel.text = "iOS Native"
        titleLabel.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        titleLabel.textColor = .systemBlue
        titleLabel.textAlignment = .center
        
        let flutterButton = UIButton(type: .system)
        flutterButton.setTitle("Move to Flutter", for: .normal)
        flutterButton.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        flutterButton.backgroundColor = .systemBlue
        flutterButton.setTitleColor(.white, for: .normal)
        flutterButton.layer.cornerRadius = 8
        flutterButton.addTarget(self, action: #selector(openFlutterScreen), for: .touchUpInside)
        
        let stackView = UIStackView(arrangedSubviews: [titleLabel, flutterButton])
        stackView.axis = .vertical
        stackView.spacing = 24
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            flutterButton.widthAnchor.constraint(equalToConstant: 200),
            flutterButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc private func openFlutterScreen() {
        let flutterEngine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine
        let flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
        
        flutterViewController.modalPresentationStyle = .fullScreen
        present(flutterViewController, animated: true)
    }
}
