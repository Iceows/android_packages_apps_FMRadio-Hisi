/*
* aidl file :
* hisi/fmradio/IHwFmService.aidl
* This file contains definitions of functions which are
* exposed by service.
*
* Author : Raphael Mounier (Iceows)
*/
package com.android.hisifmradio;

import com.android.hisifmradio.IFMRadioServiceCallbacks;

interface IFMRadioService
{
    boolean fmOn();
    boolean fmOff();
    boolean fmRadioReset();
    boolean isFmOn();
    boolean isAnalogModeEnabled();
    boolean isFmRecordingOn();
    boolean isSpeakerEnabled();
    boolean fmReconfigure();
    void registerCallbacks(IFMRadioServiceCallbacks cb);
    void unregisterCallbacks();
    boolean mute();
    boolean unMute();
    boolean isMuted();
    boolean startRecording();
    void stopRecording();
    boolean tune(int frequency);
    boolean seek(boolean up);
    void enableSpeaker(boolean speakerOn);
    boolean scan(int pty);
    boolean seekPI(int piCode);
    boolean searchStrongStationList(int numStations);
    int[]   getSearchList();
    boolean cancelSearch();
    String getProgramService();
    String getRadioText();
    int getProgramType();
    int getProgramID();
    boolean setLowPowerMode(boolean bLowPower);
    int getPowerMode();
    boolean enableAutoAF(boolean bEnable);
    boolean enableStereo(boolean bEnable);
    boolean isAntennaAvailable();
    boolean isWiredHeadsetAvailable();
    boolean isCallActive();
    int getRssi();
    int getIoC();
    int getMpxDcc();
    int getIntDet();
    int getSINR();
    void setHiLoInj(int inj);
    void delayedStop(long nDuration, int nType);
    void cancelDelayedStop (int nType);
    void requestFocus();
    boolean setSinrSamplesCnt(int samplesCnt);
    boolean setSinrTh(int sinr);
    boolean setIntfDetLowTh(int intfLowTh);
    boolean setIntfDetHighTh(int intfHighTh);
    String getExtenRadioText();
    int getExtenCountryCode();
    int getSinrSamplesCnt();
    int getSinrTh();
    int getSearchAlgoType();
    boolean setSearchAlgoType(int searchType);
    int getSinrFirstStage();
    boolean setSinrFirstStage(int sinr);
    int getRmssiFirstStage();
    boolean setRmssiFirstStage(int rmssi);
    int getCFOMeanTh();
    boolean setCFOMeanTh(int cf0);
    boolean setAfJmpRmssiTh(int afJmpRmssiTh);
    boolean setGoodChRmssiTh(int gdChRmssiTh);
    boolean setAfJmpRmssiSamplesCnt(int afJmpRmssiSmplsCnt);
    int getAfJmpRmssiTh();
    int getGoodChRmssiTh();
    int getAfJmpRmssiSamplesCnt();
    boolean setRxRepeatCount(int count);
    long getRecordingStartTime();
    boolean isSleepTimerActive();
    boolean isSSRInProgress();
    boolean isRtPlusSupported();
    boolean isA2DPConnected();
    boolean isSearchInProgress();
    List getScannedFrequencies();
    boolean getIntfDetLowTh();
    boolean getIntfDetHighTh();
    boolean getRxRepeatCount();
    void restoreDefaults();
}

