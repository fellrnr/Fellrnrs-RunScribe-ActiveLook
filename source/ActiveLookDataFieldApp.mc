using Toybox.Application;

(:typecheck(false))
class ActiveLookDataFieldApp extends Application.AppBase {

    function initialize() {
        AppBase.initialize();
    }

    // onStart() is called on application start up
    function onStart(state) {
    }

    // onStop() is called when your application is exiting
    function onStop(state) {
    }

    //! Return the initial view of your application here
    function getInitialView() {
        var sensorLeft;
        var sensorRight;
        
        try {       
            sensorLeft = new RunScribeSensor(11, 62, 8192);
            sensorRight = new RunScribeSensor(12, 64, 8192);


    //  Page 0
    //  Footstrike              Encoded             1       FS Type     8 bits  [b7/b6 = FS Num % 4, b5=L/R, b4=H/L, b3-b0=FS Type]
    //  Impact Gs               0 to 15.9375        1/16    Gs          8 bits
    //  Braking Gs              0 to 15.9375        1/16    Gs          8 bits
    //  Contact Time            0 to 1023           1       msec        10 bits
    //  Flight Ratio            -64 to 63.875       1/8     %           10 bits
    //  Power                   0 to 1023           1       watts       10 bits
    //  Pronation Excursion     -51.2 to +51.1      1/10    deg         10 bits
    /*
            sensorLeft.Impact = 12.3;
            sensorRight.Impact = 13.4;

            sensorLeft.Braking = 13.4;
            sensorRight.Braking = 12.3;

            sensorLeft.ContactTime = 195;
            sensorRight.ContactTime = 190;

            sensorLeft.FlightRatio = 34.6;
            sensorRight.FlightRatio = 64.3;

            sensorLeft.Pronation = 34.6;
            sensorRight.Pronation = 64.3;

            sensorLeft.Power = 123;
            sensorRight.Power = 123;
            */
            /*
            */
        } catch(e) {
            sensorLeft = null;
            sensorRight = null;
        }
        
        
        //return [ new FellrnrFullScreenRunScribeView(sensorLeft, sensorRight) ];

        return [ new ActiveLookDataFieldView(sensorLeft, sensorRight) ];
    }

}
