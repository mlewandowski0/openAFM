from dataAcquisition import dataAcquisition

try:
    from piplates import DAQCplate

except ImportError:
    pass

class DAQCPlate(dataAcquisition):
    def __init__(self):
        super().__init__()

    def setADC(self, channel, value):
        pass

    def getADC(self, channel):
        pass

