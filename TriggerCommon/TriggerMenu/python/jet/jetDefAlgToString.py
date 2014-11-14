"""Convert Jet Def alg to a string for central trigger testing"""


class JetDefAlgToStringInstantiator(object):

    def __call__(self, a):
        """__call__ returns the algorithm factory as a representation of
        the JetDef.Algorithm"""

        return a.asString()
