import unittest
from mock import MagicMock
from algFactories import (alg_dispatcher,
                          Alg)


def make_menu_data(k):
    mult_1_hypo = ('jr_hypo_single',
                   'l15_hypo_implicit0',
                   'l15_hypo_implicit1',
                   'cellDiagnostics',
                   'clusterDiagnostics',
                   'jetRecDiagnostics',
                   'jetRecDiagnostics',
                   'jetHypoDiagnostics',
                   'roiDiagnostics',
                   )

    mult_many_hypo = ('l2_hypo_implicit1',
                      'jr_hypo_multi',
                      )

    jet_fex = ('jetrec',)
    cluster_fex = ('topoClusterMaker_partial','topoClusterMaker_fullcalo')

    if k in mult_1_hypo:
        return make_hypo_menudata(n_ja=1)

    if k in mult_many_hypo:
        return make_hypo_menudata(n_ja=2)

    if k in jet_fex:
        return make_jetfex_menudata()

    if k in cluster_fex:
        return make_clusterfex_menudata()

    return None

def make_hypo_menudata(n_ja):

    def _make_ja():
        ja = MagicMock()
        ja.region = 'j'
        return ja

    menu_data = MagicMock()
    menu_data.hypo_params = MagicMock()
    menu_data.hypo_params.jet_attributes = [_make_ja() for i in range(n_ja)]
    menu_data.hypo_params.region.return_value = 'j'

    return menu_data


def make_jetfex_menudata():
    menu_data = MagicMock()
    menu_data.merge_param = 0.4
    menu_data.do_jes = True
    cluster_calib = 'LC'
    return menu_data

def make_clusterfex_menudata():
    menu_data = MagicMock()
    menu_data.cluster_dolc = True
    return menu_data

class TestAlgFactories(unittest.TestCase):

    def test_0(self):

        for k, v in alg_dispatcher.items():
            menu_data = make_menu_data(k)

            if menu_data:
                a = v(menu_data)
            else:
                a = v()
            self.assertTrue(isinstance(a, Alg))

if __name__ == '__main__':
    unittest.main()
