def instantiatorFactory(use_atlas_config):
    """Function to provide an instantiator. Avoids doing heavy import of
    jetDefInstantiator unless it is explicitly requested"""

    if use_atlas_config:
        from jetDefInstantiator import Instantiator
        return Instantiator()

    from jetDefAlgToString import JetDefAlgToStringInstantiator
    return JetDefAlgToStringInstantiator()
