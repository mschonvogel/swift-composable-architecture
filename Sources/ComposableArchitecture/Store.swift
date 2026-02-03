return core.didSet
  .receive(on: UIScheduler.shared)
  .prefix { [weak self] _ in self?.core.isInvalid == false }