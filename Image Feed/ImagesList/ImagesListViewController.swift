import UIKit

class ImagesListViewController: UIViewController {
    @IBOutlet private var tableView: UITableView!

    private lazy var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .none
        return formatter
    }()
}

/// Метод, который определяет количество ячеек в секции таблицы, возврат значения. Так как в проекте секция у нас всего одна, проигнорируем значение параметра section.
extension ImagesListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

/// Метод протокола должен возвращать ячейку. У класса UITableViewCell есть дефолтный конструктор, который не принимает никаких аргументов
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ImagesListCell.reuseIdentifier, for: indexPath)

        guard let imageListCell = cell as? ImagesListCell else {
            return UITableViewCell()
        }

        configCell(for: imageListCell, with: indexPath)

        return imageListCell
    }
}

extension ImagesListViewController {
    func configCell(for cell: ImagesListCell, with indexPath: IndexPath) { }
}

extension ImagesListViewController: UITableViewDelegate {
/// Метод отвечает за действия, которые будут выполнены при тапе по ячейке таблицы. «Адрес» ячейки, который содержится в indexPath, передаётся в качестве аргумента.
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {}
}
